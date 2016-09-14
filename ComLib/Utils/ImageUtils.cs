using System;
using System.IO;


namespace ComLib.Utils
{
    public class ImageUtils
    {
        private static string basePath = AppDomain.CurrentDomain.BaseDirectory + "wwwroot\\upload\\UserImg\\{0}\\{1}\\{2}.png";
        private static string creatPath = AppDomain.CurrentDomain.BaseDirectory + "wwwroot\\upload\\UserImg\\{0}\\{1}\\";
        private static string httpPath = "/upload/UserImg/{0}/{1}/{2}.png";
        public static string ToImg(string clientType,string id, string str)
        {
            string tmpStr = str.Replace("\n", "");
            string outStr = tmpStr.Replace(" ", "+");

            byte[] bt = Convert.FromBase64String(outStr);

            string fileName = Guid.NewGuid().ToString();
            string cPath = string.Format(creatPath,clientType, id);
            string wPath = string.Format(basePath, clientType, id, fileName);
            string oPath = string.Format(httpPath, clientType, id, fileName);
            if (DirFile.IsExistDirectory(cPath) == false)
            {
                DirFile.CreateDirectory(cPath);
                FileStream s = new FileStream(wPath, FileMode.Create);
                s.Write(bt, 0, bt.Length);
                s.Close();
            }
            else
            {
                FileStream s = new FileStream(wPath, FileMode.Create);
                s.Write(bt, 0, bt.Length);
                s.Close();
            }

            return oPath;
        }
    }
}
