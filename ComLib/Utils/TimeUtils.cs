using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComLib.Utils
{
    /// <summary>
    /// 日期时间静态类
    /// </summary>
    public class TimeUtils
    {
        #region 获得两个日期的间隔
        /// <summary>
        /// 获得两个日期的间隔
        /// </summary>
        /// <param name="DateTime1">日期一。</param>
        /// <param name="DateTime2">日期二。</param>
        /// <returns>日期间隔TimeSpan。</returns>
        public static TimeSpan DateDiff(DateTime DateTime1, DateTime DateTime2)
        {
            TimeSpan ts1 = new TimeSpan(DateTime1.Ticks);
            TimeSpan ts2 = new TimeSpan(DateTime2.Ticks);
            TimeSpan ts = ts1.Subtract(ts2).Duration();
            return ts;
        }
        #endregion

        /// <summary>
        /// 获取时间戳
        /// </summary>
        /// <returns></returns>
        public static long GetUtcStamp()
        {
            TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return Convert.ToInt64(ts.TotalSeconds);
        }

        /// <summary>
        /// 获取时间戳
        /// </summary>
        /// <returns></returns>
        public static string GetTimeStamp()
        {
            TimeSpan ts = DateTime.UtcNow - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            return Convert.ToInt64(ts.TotalSeconds).ToString();
        }

        /// <summary>
        /// 时间字符串转为DateTime
        /// </summary>
        /// <param name="timeStr">YYYY-MM-dd HH:mm</param>
        /// <returns></returns>
        public static DateTime GetDateTimeByStr(string timeStr)
        {
            DateTime dt = Convert.ToDateTime(timeStr);
            return dt;
        }

        /// <summary>
        /// 时间戳转为C#格式时间
        /// </summary>
        /// <param name=”timeStamp”></param>
        /// <returns></returns>
        public static DateTime ConvertTime(string timeStamp)
        {
            DateTime dtStart = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));
            long lTime = long.Parse(timeStamp + "0000000");
            TimeSpan toNow = new TimeSpan(lTime);
            return dtStart.Add(toNow);
        }

        /// <summary>
        /// 获取当日起始时间戳
        /// </summary>
        /// <returns></returns>
        public static long[] GetBetStamp()
        {
            long startStamp = 0;
            long endStamp = 0;
            DateTime start = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 0, 0, 0);
            TimeSpan ts = start - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            startStamp = Convert.ToInt64(ts.TotalSeconds);

            DateTime end = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, 23, 59, 59);
            TimeSpan tsEnd = end - new DateTime(1970, 1, 1, 0, 0, 0, 0);
            endStamp = Convert.ToInt64(tsEnd.TotalSeconds);
            return new long[] { startStamp, endStamp };
        }
    }
}
