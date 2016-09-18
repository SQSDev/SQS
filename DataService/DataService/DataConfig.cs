
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
        public const string Sql_Host = "Data Source = 127.0.0.1; Initial Catalog = jxb; Integrated Security = True";
        /// <summary>
        /// 用户表字段
        /// </summary>
        public static readonly string[] Table_User = { "uid", "loginName", "psw", "headImage", "sex", "score", "location", "regTime", "state", "iCode", "cardId", "name", "phoneNumber", "IDCardFront", "IDCardBack", "authState", "sevMoney", "updateTime", "company", "companyLocation", "companyAuthState", "otherDesc", "license", "logoPath", "companyApplyTime" };
        /// <summary>
        /// 师傅表字段
        /// </summary>
        public static readonly string[] Table_Worker = { "uid", "loginName", "psw", "workTypes", "age", "sex", "workNum", "lv", "authState", "workState", "location", "name", "cardId", "company", "companyLocation", "sevMoney", "iCode", "otherDesc", "headImage", "IDCardFront", "IDCardBack", "workCard", "regTime", "equipments", "authApplyTime" };
        /// <summary>
        /// 简历表字段
        /// </summary>
        public static readonly string[] Table_CV = { "uid", "workerUid", "jobsIntended", "workLocation", "workExp", "teach", "certPath", "otherDesc", "area", "time" };
        /// <summary>
        /// 订单表字段
        /// </summary>
        public static readonly string[] Table_Order = { "orderUid", "userUid", "workerUid", "orderState", "sendTime", "orderCost", "otherDesc", "orderLocal", "orderArea", "star", "otherEvaluate", "proposal", "imgPath", "overTime", "orderType", "orderTypeId", "transactionType", "orderSender", "payTime", "payType", "isFlag", "confirmState" };


        //1：待确认(待接单)//2：待报价 3:已报价//4：已完成未评价//5：已完成已评价//6：订单已过期 //7：订单已取消(数据库保留三天内取消的订单) (string)
        public const string OrderState_Ready = "1";
        public const string OrderState_NoCost = "2";
        public const string OrderState_HaveCost = "3";
        public const string OrderState_CplNoJudge = "4";
        public const string OrderState_CplHaveJudge = "5";
        public const string OrderState_Over = "6";
        public const string OrderState_Cancel = "7";

        public const int Page_Count = 10;//每页数据条数
    }
}
