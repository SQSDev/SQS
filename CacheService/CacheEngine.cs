using System;
using System.Timers;
using System.Collections.Generic;
using System.Linq;
using ServiceStack.Redis;
using ServiceStack.Redis.Support;
using ComLib.Utils;
using CacheService.CacheHandler;

//Redis缓存引擎
namespace CacheService
{
    public class CacheEngine
    {
        private PooledRedisClientManager prcm;
  
        public CacheEngine()
        {

        }

        private static CacheEngine _instance = null;
        public static CacheEngine Instance()
        {
            if (_instance == null)
            {
                _instance = new CacheEngine();

            }
            return _instance;
        }

        public bool Start()
        {
    
            try
            {
                prcm = CreateManager(new string[] { CacheConfig.RedisHost }, new string[] { CacheConfig.RedisHost });
            }
            catch(Exception ex)
            {
                LogUtils.WriteErrorLog(typeof(CacheEngine),ex.Message);
                return false;
            }
            AccountHandler.Instance().Init(GetClient());
            Console.WriteLine("Redis缓存引擎启动成功！\n");

            return true;
        }


        private PooledRedisClientManager CreateManager(string[] readWriteHosts, string[] readOnlyHosts)
        {
            //WriteServerList：可写的Redis链接地址。  
            //ReadServerList：可读的Redis链接地址。  
            //MaxWritePoolSize：最大写链接数。  
            //MaxReadPoolSize：最大读链接数。  
            //AutoStart：自动重启。  
            //LocalCacheTime：本地缓存到期时间，单位:秒。  
            //RecordeLog：是否记录日志,该设置仅用于排查redis运行时出现的问题,如redis工作正常,请关闭该项。  
            //RedisConfigInfo类是记录redis连接信息，此信息和配置文件中的RedisConfig相呼应  

            // 读写分离，均衡负载   
            return new PooledRedisClientManager(readWriteHosts, readOnlyHosts, new RedisClientManagerConfig
            {
                MaxWritePoolSize = 5, // “写”链接池链接数   
                MaxReadPoolSize = 5, // “读”链接池链接数   
                AutoStart = true,
            });
        }

        private IEnumerable<string> SplitString(string strSource, string split)
        {
            return strSource.Split(split.ToArray());
        }

        /// <summary>  
        /// 操作对象  
        /// </summary>  
        public IRedisClient GetClient()
        {
            if (prcm == null)
            {
                try
                {
                    prcm = CreateManager(new string[] { CacheConfig.RedisHost }, new string[] { CacheConfig.RedisHost });
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            return prcm.GetClient();
        }

    }
}
