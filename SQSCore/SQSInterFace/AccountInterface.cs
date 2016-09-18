﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQSCore.SQSInterFace
{
    /// <summary>
    /// 帐号接口
    /// </summary>
    public interface AccountInterface
    {
        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="pwd">密码</param>
        /// <returns></returns>
        bool Register(string username, string pwd);
        /// <summary>
        /// 平台帐号登录
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="pwd">密码</param>
        /// <param name="ip">IP地址</param>
        /// <returns></returns>
        bool Login(string username, string pwd, string ip);
        /// <summary>
        /// 第三方帐号登录
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="type">1:帐号登录2:QQ登录3:微信登录4:微博登录</param>
        /// <param name="ip"></param>
        /// <returns></returns>
        bool Login(string username, int type, string ip);
    }
}
