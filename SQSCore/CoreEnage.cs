using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net.Config;
using DataService;

namespace SQSCore
{
    public class CoreEnage
    {
        DataBaseEngine dbe;
        private static CoreEnage _instance = null;
        public static CoreEnage Instance()
        {
            if (_instance == null)
            {
                _instance = new CoreEnage();

            }
            return _instance;
        }

        public void Start()
        {
            //启动日志记录模块
            XmlConfigurator.Configure();
            //启动数据库线程
            if(dbe == null)
            {
                dbe = new DataBaseEngine();
            }
            dbe.Start();
        }
    }
}
