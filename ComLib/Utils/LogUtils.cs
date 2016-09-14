using System;

namespace ComLib.Utils
{
    /// <summary>
    /// 日志记录静态类
    /// </summary>
    public class LogUtils
    {
        /// <summary>
        /// 写入错误日志
        /// </summary>
        /// <param name="t"></param>
        /// <param name="ex"></param>
        #region  static void WriteErrorLog(Type t, Exception ex)

        public static void WriteErrorLog(Type t, Exception ex)
        {
            log4net.ILog log = log4net.LogManager.GetLogger(t);
            log.Error("Error", ex);
        }
        #endregion

        /// <summary>
        /// 写入错误日志
        /// </summary>
        /// <param name="t"></param>
        /// <param name="msg"></param>
        #region static void WriteErrorLog(Type t, string msg)

        public static void WriteErrorLog(Type t, string msg)
        {
            log4net.ILog log = log4net.LogManager.GetLogger(t);
            log.Error(msg);
        }

        #endregion

        /// <summary>
        /// 写入信息日志
        /// </summary>
        /// <param name="t"></param>
        /// <param name="msg"></param>
        #region static void WriteInfoLog(Type t, string msg)

        public static void WriteInfoLog(Type t, string msg)
        {
            log4net.ILog log = log4net.LogManager.GetLogger(t);
            log.Info(msg);
        }

        #endregion

        public static void WriteDebugLog(Type t, string msg)
        {
            log4net.ILog log = log4net.LogManager.GetLogger(t);
            log.Debug(msg);
        }
    }
}
