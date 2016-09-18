using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataService.Model
{
    public class ResultCode
    {
        public enum Result
        {
            Err = 0,//运行出错
            OK = 1,//操作成功
            ACCOUNT_IS_REGED = 2,//帐号已存在
            ACCOUNT_NO = 3//用户名或密码错误
        }
    }
}
