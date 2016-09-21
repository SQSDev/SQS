using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ComLib.Utils;
using DataService.Model;

namespace DataService.DataHandler
{
    public class AccountDataHandler
    {
       public List<AccountBase> LoadAccountData()
        {
            string sql = "select * from SQS_Account;";
            DataSet ds = SqlserverUtils.ExecuteDataset(SqlserverUtils.ConStr, CommandType.Text, sql);
            IList<AccountBase> wu = ConvertUtils.DataSetToEntityList<AccountBase>(ds, 0);
            List<AccountBase> lu = new List<AccountBase>();
            lu.AddRange(wu);
            return lu;
        }


        public int UpdateAccountData(AccountBase su)
        {
            int rs = 0;
            if(su == null)
            {
                return rs;
            }
            //todo
            return rs;
        }


    }
}
