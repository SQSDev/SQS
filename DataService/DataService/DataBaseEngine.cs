using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using ComLib.Utils;
using Newtonsoft.Json;
using DataService.DataHandler;
using DataService.Model;

/// <summary>
/// 数据库执行引擎
/// </summary>
namespace DataService
{
    public class DataBaseEngine
    {
        private List<DbQuery> listQuery;//sql队列
        private Thread dbThread;//数据库执行线程
        private bool isRunning = false;//是否运行状态
        private MysqlHelper mysql;

        private AccountDataHandler Account;//帐号数据存取
        public DataBaseEngine()
        {
            mysql = new MysqlHelper(DataConfig.Sql_Host);
            listQuery = new List<DbQuery>();
            Account = new AccountDataHandler();
          
        }

        public bool Start()
        {
            try
            {
                dbThread = new Thread(Run);
                dbThread.IsBackground = true;
                dbThread.Name = "DB_Thread";
                dbThread.Start();
            }
            catch(Exception ex)
            {
                Console.WriteLine("数据库线程启动失败："+ex.Message);
                return false;
            }
            isRunning = true;
            Console.WriteLine("数据库线程启动成功！线程ID："+ dbThread.ManagedThreadId + "\n");
            return true;
        }
        private void Run()
        {
            while(isRunning)
            {
                if(listQuery != null && listQuery.Count > 0)
                {
                    Console.WriteLine("队列中有 "+listQuery.Count + "条SQL");
                    DbQuery db = null;
                    try
                    {
                         db = listQuery.First();
                        if(db != null && db.state == 0)
                        {
                            db.rs = mysql.ExecuteNonQuery(CommandType.Text, db.SqlStr);
                            db.state = 1;
                        }
                        listQuery.Remove(db);
                        Console.WriteLine("队列中有 " + listQuery.Count + "条SQL");
                    }
                    catch(Exception ex)
                    {
                        if(db != null)
                        {
                            db.state = 2;
                            LogUtils.WriteErrorLog(typeof(DataBaseEngine),JsonConvert.SerializeObject(db));
                            listQuery.Remove(db);
                        }
                  
                        Console.WriteLine("数据库线程执行异常:"+ex.Message);
                        
                    }
        
                }
                Thread.Sleep(5*1000);//线程休眠10秒
            }
        }

        public bool Stop()
        {
            if(listQuery != null && listQuery.Count > 0)
            {
                Console.WriteLine("队列中还有"+listQuery.Count+"条等待执行，请稍候再关闭");
                return false;
            }
            if(dbThread != null)
            {
                dbThread.Abort();
            }
            isRunning = false;
            listQuery.Clear();
            dbThread = null;
            return true;
        }

        /// <summary>
        /// 推入SQL执行语句
        /// </summary>
        /// <param name="query"></param>
        public void PushDbQuery(string query)
        {
            DbQuery dbQue = new DbQuery();
            dbQue.SqlStr = query;
            listQuery.Add(dbQue);
        }

        public long GetQueryCount()
        {
            if(listQuery == null)
            {
                return 0;
            }
            return listQuery.Count;
        }


        /// <summary>
        /// 获取用户帐号列表
        /// </summary>
        /// <returns></returns>
        public List<AccountBase> GetUser()
        {
            return Account.LoadAccountData();
        }

        /// <summary>
        /// 更新用户信息
        /// </summary>
        /// <param name="su"></param>
        /// <returns></returns>
        public int PutUpdateUser(AccountBase su)
        {
            return Account.UpdateAccountData(su);
        }

    }
}
