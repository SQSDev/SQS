using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataService
{
    public class DbQuery
    {
        public string SqlStr = "";//执行的SQL语句
        public int state = 0;//0待执行 1 已执行 2 执行失败
        public int rs = 0;//数据库执行返回

    }
}
