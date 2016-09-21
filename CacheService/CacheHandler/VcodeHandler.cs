using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// 验证码Token缓存
/// </summary>
namespace CacheService.CacheHandler
{

    public class VcodeHandler
    {
        private static VcodeHandler _instance = null;
        private Dictionary<string, string> dicVcode;

        public static VcodeHandler Instance()
        {
            if (_instance == null)
            {
                _instance = new VcodeHandler();

            }
            return _instance;
        }

        public VcodeHandler()
        {
            dicVcode = new Dictionary<string, string>();

        }

        public void Put(string mobile,string vcode)
        {
            if(dicVcode.ContainsKey(mobile))
            {
                dicVcode[mobile] = vcode;
            }
            else
            {
                dicVcode.Add(mobile, vcode);
            }
        }

        public string Get(string mobile)
        {
            if(dicVcode.ContainsKey(mobile))
            {
                return dicVcode[mobile];
            }
            return "";
        }

        public void Delete(string mobile)
        {
            if (dicVcode.ContainsKey(mobile))
            {
                dicVcode.Remove(mobile);
            }
        }

      
    }
}
