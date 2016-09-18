using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SQSCore.SQSInterFace;

namespace SQSCore.Account
{
    public class AccountService:AccountInterface
    {
        /// <summary>
        /// 帐号注册
        /// </summary>
        /// <param name="username">手机号</param>
        /// <param name="pwd">密码</param>
        /// <returns>是否成功</returns>
        public bool Register(string username,string pwd)
        {
            return true;
        }

        /// <summary>
        /// 平台帐号登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public bool Login(string username,string pwd,string ip)
        {
            return true;
        }

        /// <summary>
        /// 第三方登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public bool Login(string username,int type, string ip)
        {
            return true;
        }
    }
}
