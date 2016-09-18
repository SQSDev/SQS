using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SQSCore.SQSInterFace;
using DataService.Model;
using ComLib.DEncrypt;
using ComLib.Utils;
using CacheService.CacheHandler;

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
            AccountBase model = new AccountBase();
            model.AccountType = 0;
            model.FrostMoney = 0;
            model.CashMoney = 0;
            model.Mobile = username;
            model.Password = Encrypt.GetMD5_32(pwd);
            model.LastLoginType = 1;
            model.RegTime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            int rs = AccountHandler.Instance().AddAccount(model);
            if(rs == 1)
            {
                return true;
            }
            else
            {
                //todo
                return false;
            }
        }

        /// <summary>
        /// 平台帐号登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public int Login(string username,string pwd,string ip)
        {
            return AccountHandler.Instance().Login(username, pwd, ip);
        }

        /// <summary>
        /// 第三方登录
        /// </summary>
        /// <param name="username"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public int Login(string username,int type, string ip)
        {
            return (int)ResultCode.Result.OK;
        }

        /// <summary>
        /// 发送验证码
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public string GetVcode(string username)
        {
            string vc = RandomUtils.Number(4);
            //todo发送短信
            AccountHandler.Instance().PutVcode(username, vc);
            return vc;
        }
    }
}
