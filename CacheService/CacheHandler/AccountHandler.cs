using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataService.Model;
using ServiceStack.Redis;
using ServiceStack.Text;
using DataService;
using ComLib.DEncrypt;

namespace CacheService.CacheHandler
{
    public class AccountHandler
    {
        private Dictionary<string, string> dicVcode;//验证码字典
        private List<AccountBase> ListAccount;
        private static AccountHandler _instance = null;
        public static AccountHandler Instance()
        {
            if (_instance == null)
            {
                _instance = new AccountHandler();

            }
            return _instance;
        }

        private IRedisClient redisClient;
        public void Init(IRedisClient redis)
        {
            redisClient = redis;
            ListAccount = new List<AccountBase>();
            dicVcode = new Dictionary<string, string>();
        }

        /// <summary>
        /// 存放手机验证码
        /// </summary>
        /// <param name="mobile">手机号</param>
        /// <param name="vcode">验证码</param>
        public void PutVcode(string mobile, string vcode)
        {
            if (dicVcode.ContainsKey(mobile))
            {
                dicVcode[mobile] = vcode;
            }
            else
            {
                dicVcode.Add(mobile, vcode);
            }
        }

        /// <summary>
        /// 检测手机验证码
        /// </summary>
        /// <param name="mobile"></param>
        /// <param name="vc"></param>
        /// <returns></returns>
        public bool CheckVcode(string mobile,string vc)
        {
            if (dicVcode.ContainsKey(mobile))
            {
                return dicVcode[mobile].Equals(vc);
            }
            return false;
        }

        //删除手机验证码
        public void DeleteVcode(string mobile)
        {
            if (dicVcode.ContainsKey(mobile))
            {
                dicVcode.Remove(mobile);
            }
        }

        /// <summary>
        /// 增加帐号
        /// </summary>
        /// <param name="model">帐号数据模型</param>
        /// <returns></returns>
        public int AddAccount(AccountBase model)
        {
            
            if (ListAccount.Find(x => x.Mobile == model.Mobile) != null)
                return (int)ResultCode.Result.ACCOUNT_IS_REGED;
           
            ListAccount.Add(model);
            redisClient.Add("SQS_Account",model);
            return (int)ResultCode.Result.OK;
        }

        /// <summary>
        /// 平台帐号登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="pwd"></param>
        /// <param name="ip"></param>
        /// <returns></returns>
        public int Login(string username, string pwd, string ip)
        {
           AccountBase model=ListAccount.Find(x => x.Mobile == username);
            if(model == null || model.Password.Equals(Encrypt.GetMD5_32(pwd))==false)
            {
                return (int)ResultCode.Result.ACCOUNT_NO;
            }
            model.LastLoginIP = ip;
            model.LastLoginType = 1;
            model.LastLoginTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            return (int)ResultCode.Result.OK;
        }

        public void Dispose()
        {

        }


    }
}
