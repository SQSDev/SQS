using System;

namespace DataService.Model
{
    public class AccountBase
    {
        public long Id { get; set; }//帐号Id
        public int AccountType { get; set; }//帐号类型----- 0:普通帐号1:普通管理员帐号2:超级管理员帐号
        public string Mobile { get; set; }//主帐号（手机号）
        public string Nickname { get; set; }//帐号名称
        public string Password { get; set; }//密码
        public string Email { get; set; }//邮箱
        public string QQAccount { get; set; }//QQ帐号
        public string WeChatAccount { get; set; }//微信帐号
        public string WeiBoAccount { get; set; }//微博帐号
        public string HeadPath { get; set; }//头像地址
        public string RegTime { get; set; }//帐号注册时间
        public string BankName { get; set; }//开户银行名称
        public string BankCard { get; set; }//银行卡号
        public string RealName { get; set; }//开户姓名
        public string IdCard { get; set; }//身份证号
        public string CashPwd { get; set; }//提现密码
        public decimal TotalMoney { get; set; }//总余额
        public decimal CashMoney { get; set; }//可提现余额
        public decimal FrostMoney { get; set; }//冻结余额
        public string LastLoginIP { get; set; }//上次登录IP
        public string LastLoginTime { get; set; }//上次登录时间
        public int LastLoginType { get; set; }//上次登录方式

    }
}
