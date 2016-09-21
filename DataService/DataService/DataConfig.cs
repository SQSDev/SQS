
namespace DataService
{
    public class DataConfig
    {
        /// <summary>
        /// 主数据库连接串
        /// </summary>
        public const string SqlScource_Host = "database=jxb;Server=120.26.226.30,1433;User ID=sa;Password=123321`-;Persist Security Info=True";
        /// <summary>
        /// 备数据库接连串
        /// </summary>
        public const string Sql_Host = "server=localhost;user id = root; Password=Mysql_2016;database=sqs";
        /// <summary>
        /// 注册帐号
        /// </summary>
        public static readonly string Account_Reg = "INSERT INTO `sqs`.`sqs_account` ( `Id`, `Mobile`, `Password`, `RegTime`,`TotalMoney`, `CashMoney`, `FrostMoney`, `LastLoginIP`, `LastLoginType`, `LastLoginTime`, `AccountType`) VALUES ('{0}', '{1}', '{2}', '{3}','{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}');";

        public const int Page_Count = 10;//每页数据条数
    }
}
