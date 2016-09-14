using System;
using System.Text;
using System.Text.RegularExpressions;

namespace ComLib.Utils
{
    /// <summary>
    /// 验证工具静态类
    /// </summary>
    public class CheckUtils
    {
        #region 验证输入字符串是否与模式字符串匹配
        /// <summary>
        /// 验证输入字符串是否与模式字符串匹配，匹配返回true
        /// </summary>
        /// <param name="input">输入字符串</param>
        /// <param name="pattern">模式字符串</param>        
        public static bool IsMatch(string input, string pattern)
        {
            return IsMatch(input, pattern, RegexOptions.IgnoreCase);
        }

        /// <summary>
        /// 验证输入字符串是否与模式字符串匹配，匹配返回true
        /// </summary>
        /// <param name="input">输入的字符串</param>
        /// <param name="pattern">模式字符串</param>
        /// <param name="options">筛选条件</param>
        public static bool IsMatch(string input, string pattern, RegexOptions options)
        {
            return Regex.IsMatch(input, pattern, options);
        }
        #endregion

        #region 判断对象是否为空
        /// <summary>
        /// 判断对象是否为空，为空返回true
        /// </summary>
        /// <typeparam name="T">要验证的对象的类型</typeparam>
        /// <param name="data">要验证的对象</param>        
        public static bool IsNullOrEmpty<T>(T data)
        {
            //如果为null
            if (data == null)
            {
                return true;
            }

            //如果为""
            if (data.GetType() == typeof(String))
            {
                if (string.IsNullOrEmpty(data.ToString().Trim()))
                {
                    return true;
                }
            }

            //如果为DBNull
            if (data.GetType() == typeof(DBNull))
            {
                return true;
            }

            //不为空
            return false;
        }

        /// <summary>
        /// 判断对象是否为空，为空返回true
        /// </summary>
        /// <param name="data">要验证的对象</param>
        public static bool IsNullOrEmpty(object data)
        {
            //如果为null
            if (data == null)
            {
                return true;
            }

            //如果为""
            if (data.GetType() == typeof(String))
            {
                if (string.IsNullOrEmpty(data.ToString().Trim()))
                {
                    return true;
                }
            }

            //如果为DBNull
            if (data.GetType() == typeof(DBNull))
            {
                return true;
            }

            //不为空
            return false;
        }
        #endregion

        #region 验证是否为整数
        /// <summary>
        /// 验证是否为整数 如果为空，认为验证不合格 返回false
        /// </summary>
        /// <param name="number">要验证的整数</param>        
        public static bool IsInt(string number)
        {
            //如果为空，认为验证不合格
            if (IsNullOrEmpty(number))
            {
                return false;
            }

            //清除要验证字符串中的空格
            number = number.Trim();

            //模式字符串
            string pattern = @"^[0-9]+[0-9]*$";

            //验证
            return IsMatch(number, pattern);
        }
        #endregion

        #region 验证是否为数字
        /// <summary>
        /// 验证是否为数字
        /// </summary>
        /// <param name="number">要验证的数字</param>        
        public static bool IsNumber(string number)
        {
            //如果为空，认为验证不合格
            if (IsNullOrEmpty(number))
            {
                return false;
            }

            //清除要验证字符串中的空格
            number = number.Trim();

            //模式字符串
            string pattern = @"^[0-9]+[0-9]*[.]?[0-9]*$";

            //验证
            return IsMatch(number, pattern);
        }
        #endregion

        #region 检测客户的输入中是否有危险字符串
        /// <summary>
        /// 检测客户输入的字符串是否有效,并将原始字符串修改为有效字符串或空字符串。
        /// 当检测到客户的输入中有攻击性危险字符串,则返回false,有效返回true。
        /// </summary>
        /// <param name="input">要检测的字符串</param>
        public static bool IsValidInput(string input)
        {
            try
            {
                if (IsNullOrEmpty(input))
                {
                    //如果是空值,则跳出
                    return true;
                }
                else
                {
                    //替换单引号
                    input = input.Replace("'", "''").Trim();

                    //检测攻击性危险字符串
                    string testString = "and |or |exec |insert |select |delete |update |count |chr |mid |master |truncate |char |declare ";
                    string[] testArray = testString.Split('|');
                    foreach (string testStr in testArray)
                    {
                        if (input.ToLower().IndexOf(testStr) != -1)
                        {
                            //检测到攻击字符串,清空传入的值
                            return false;
                        }
                    }

                    //未检测到攻击字符串
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return true;
        }
        #endregion

        #region 验证身份证是否合法
        /// <summary>
        /// 验证身份证是否合法
        /// </summary>
        /// <param name="idCard">要验证的身份证</param>        
        public static bool IsIdCard(string idCard)
        {
            //如果为空，认为验证不合格
            if (IsNullOrEmpty(idCard))
            {
                return false;
            }

            //清除要验证字符串中的空格
            idCard = idCard.Trim();

            //模式字符串
            StringBuilder pattern = new StringBuilder();
            pattern.Append(@"^(11|12|13|14|15|21|22|23|31|32|33|34|35|36|37|41|42|43|44|45|46|");
            pattern.Append(@"50|51|52|53|54|61|62|63|64|65|71|81|82|91)");
            pattern.Append(@"(\d{13}|\d{15}[\dx])$");

            //验证
            if( IsMatch(idCard, pattern.ToString())== false)
            {
                return false;
            }
            string mouth = idCard.Substring(10, 2);
            if (string.IsNullOrEmpty(mouth) == false)
            {
                if (Convert.ToInt32(mouth) > 12)
                {
                    return false;
                }
            }
            string day = idCard.Substring(12, 2);
            if (string.IsNullOrEmpty(day) == false)
            {
                if (Convert.ToInt32(day) > 31)
                {
                    return false;
                }
            }
            return true;
        }
        #endregion

        #region 验证日期是否合法
        /// <summary>
        /// 验证日期是否合法,对不规则的作了简单处理
        /// </summary>
        /// <param name="date">日期</param>
        public static bool IsDate(ref string date)
        {
            //如果为空，认为验证合格
            if (IsNullOrEmpty(date))
            {
                return true;
            }

            //清除要验证字符串中的空格
            date = date.Trim();

            //替换/
            date = date.Replace(@"/", "-");

            //如果查找到汉字"今",则认为是当前日期
            if (date.IndexOf("今") != -1)
            {
                date = DateTime.Now.ToString();
            }

            try
            {
                //用转换测试是否为规则的日期字符
                date = Convert.ToDateTime(date).ToString("d");
                return true;
            }
            catch
            {
                //如果日期字符串中存在非数字，则返回false
                if (!IsInt(date))
                {
                    return false;
                }

                #region 对纯数字进行解析
                //对8位纯数字进行解析
                if (date.Length == 8)
                {
                    //获取年月日
                    string year = date.Substring(0, 4);
                    string month = date.Substring(4, 2);
                    string day = date.Substring(6, 2);

                    //验证合法性
                    if (Convert.ToInt32(year) < 1900 || Convert.ToInt32(year) > 2100)
                    {
                        return false;
                    }
                    if (Convert.ToInt32(month) > 12 || Convert.ToInt32(day) > 31)
                    {
                        return false;
                    }

                    //拼接日期
                    date = Convert.ToDateTime(year + "-" + month + "-" + day).ToString("d");
                    return true;
                }

                //对6位纯数字进行解析
                if (date.Length == 6)
                {
                    //获取年月
                    string year = date.Substring(0, 4);
                    string month = date.Substring(4, 2);

                    //验证合法性
                    if (Convert.ToInt32(year) < 1900 || Convert.ToInt32(year) > 2100)
                    {
                        return false;
                    }
                    if (Convert.ToInt32(month) > 12)
                    {
                        return false;
                    }

                    //拼接日期
                    date = Convert.ToDateTime(year + "-" + month).ToString("d");
                    return true;
                }

                //对5位纯数字进行解析
                if (date.Length == 5)
                {
                    //获取年月
                    string year = date.Substring(0, 4);
                    string month = date.Substring(4, 1);

                    //验证合法性
                    if (Convert.ToInt32(year) < 1900 || Convert.ToInt32(year) > 2100)
                    {
                        return false;
                    }

                    //拼接日期
                    date = year + "-" + month;
                    return true;
                }

                //对4位纯数字进行解析
                if (date.Length == 4)
                {
                    //获取年
                    string year = date.Substring(0, 4);

                    //验证合法性
                    if (Convert.ToInt32(year) < 1900 || Convert.ToInt32(year) > 2100)
                    {
                        return false;
                    }

                    //拼接日期
                    date = Convert.ToDateTime(year).ToString("d");
                    return true;
                }
                #endregion

                return false;
            }
        }
        #endregion

        #region 验证IP地址是否合法
        /// <summary>
        /// 验证IP地址是否合法
        /// </summary>
        /// <param name="ip">要验证的IP地址</param>        
        public static bool IsIP(string ip)
        {
            //如果为空，认为验证合格
            if (IsNullOrEmpty(ip))
            {
                return true;
            }

            //清除要验证字符串中的空格
            ip = ip.Trim();

            //模式字符串
            string pattern = @"^((2[0-4]\d|25[0-5]|[01]?\d\d?)\.){3}(2[0-4]\d|25[0-5]|[01]?\d\d?)$";

            //验证
            return IsMatch(ip, pattern);
        }
        #endregion

        #region  验证EMail是否合法
        /// <summary>
        /// 验证EMail是否合法
        /// </summary>
        /// <param name="email">要验证的Email</param>
        public static bool IsEmail(string email)
        {
            //如果为空，认为验证不合格
            if (IsNullOrEmpty(email))
            {
                return false;
            }

            //清除要验证字符串中的空格
            email = email.Trim();

            //模式字符串
            string pattern = @"^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$";

            //验证
            return IsMatch(email, pattern);
        }
        #endregion

        /// <summary>
        /// 检测手机号是否合法
        /// </summary>
        /// <param name="phone">手机号</param>
        /// <returns></returns>
        public static bool isPhone(string phone)
        {
            string dianxin = @"^1[3578][01379]\d{8}$";
            Regex dReg = new Regex(dianxin);
            string liantong = @"^1[34578][01256]\d{8}$";
            Regex tReg = new Regex(liantong);
            string yidong = @"^(134[012345678]\d{7}|1[34578][012356789]\d{8})$";
            Regex yReg = new Regex(yidong);
            if (dReg.IsMatch(phone) || tReg.IsMatch(phone) || yReg.IsMatch(phone))
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// 验证是否是座机或手机号
        /// </summary>
        /// <param name="phone"></param>
        /// <returns></returns>
        public static bool isPhoneNumber(string phone)
        {
            if (isPhone(phone) == false)
                return false;
            var regexTelephone = new Regex(@"^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$");
            if (regexTelephone.IsMatch(phone) == false)
                return false;
            return true;
        }

        /// <summary>
        /// 过滤 Sql 语句字符串中的注入脚本
        /// </summary>
        /// <param name="source">传入的字符串</param>
        /// <returns>过滤后的字符串</returns>
        public static string SqlFilter(string source)
        {
            //单引号替换成两个单引号
            source = source.Replace("'", "''");
            source = source.Replace("SELECT", "");
            source = source.Replace("UPDATE", "");
            source = source.Replace("INSERT", "");
            source = source.Replace("delete", "");
            source = source.Replace("update", "");
            source = source.Replace("insert", "");
            //半角封号替换为全角封号，防止多语句执行
            source = source.Replace(";", "；");

            //半角括号替换为全角括号
            source = source.Replace("(", "（");
            source = source.Replace(")", "）");

            ///////////////要用正则表达式替换，防止字母大小写得情况////////////////////

            //去除执行存储过程的命令关键字
            source = source.Replace("Exec", "");
            source = source.Replace("Execute", "");

            //去除系统存储过程或扩展存储过程关键字
            source = source.Replace("xp_", "x p_");
            source = source.Replace("sp_", "s p_");
            source = source.Replace("0x", "0 x");
            source = source.Replace(";", "；");
            source = source.Replace(",", ",");
            source = source.Replace("?", "?");
            source = source.Replace("<", "＜");
            source = source.Replace(">", "＞");
            source = source.Replace("(", "(");
            source = source.Replace(")", ")");
            source = source.Replace("@", "＠");
            source = source.Replace("=", "＝");
            source = source.Replace("+", "＋");
            source = source.Replace("*", "＊");
            source = source.Replace("&", "＆");
            source = source.Replace("#", "＃");
            source = source.Replace("%", "％");
            source = source.Replace("$", "￥");
            source = source.Replace("'", "");
            source = source.Replace("\"", "");
            source = source.Replace("&", "&amp");
            source = source.Replace("<", "&lt");
            source = source.Replace(">", "&gt");

            return source;
        }
    }
}
