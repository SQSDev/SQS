using System;
using System.IO;
using System.Security.Cryptography;  

namespace ComLib.DEncrypt
{
	/// <summary>
	/// DES����/�����ࡣ
	/// </summary>
	public class DESEncrypt
	{
        public DESEncrypt()
		{			
		}
        #region DES���ܽ���

        /// <summary>

        /// DES����

        /// </summary>

        /// <param name="data">��������</param>

        /// <param name="key">8λ�ַ�����Կ�ַ���</param>

        /// <param name="iv">8λ�ַ��ĳ�ʼ�������ַ���</param>

        /// <returns></returns>

        public static string Encrypt(string data, string key, string iv)
        {

            byte[] byKey = System.Text.ASCIIEncoding.ASCII.GetBytes(key);

            byte[] byIV = System.Text.ASCIIEncoding.ASCII.GetBytes(iv);



            DESCryptoServiceProvider cryptoProvider = new DESCryptoServiceProvider();

            int i = cryptoProvider.KeySize;

            MemoryStream ms = new MemoryStream();

            CryptoStream cst = new CryptoStream(ms, cryptoProvider.CreateEncryptor(byKey, byIV), CryptoStreamMode.Write);



            StreamWriter sw = new StreamWriter(cst);

            sw.Write(data);

            sw.Flush();

            cst.FlushFinalBlock();

            sw.Flush();

            return Convert.ToBase64String(ms.GetBuffer(), 0, (int)ms.Length);

        }



        /// <summary>

        /// DES����

        /// </summary>

        /// <param name="data">��������</param>

        /// <param name="key">8λ�ַ�����Կ�ַ���(��Ҫ�ͼ���ʱ��ͬ)</param>

        /// <param name="iv">8λ�ַ��ĳ�ʼ�������ַ���(��Ҫ�ͼ���ʱ��ͬ)</param>

        /// <returns></returns>

        public static string Decrypt(string data, string key, string iv)
        {

            byte[] byKey = System.Text.ASCIIEncoding.ASCII.GetBytes(key);

            byte[] byIV = System.Text.ASCIIEncoding.ASCII.GetBytes(iv);



            byte[] byEnc;

            try
            {

                byEnc = Convert.FromBase64String(data);

            }

            catch
            {

                return null;

            }

            DESCryptoServiceProvider cryptoProvider = new DESCryptoServiceProvider();

            MemoryStream ms = new MemoryStream(byEnc);

            CryptoStream cst = new CryptoStream(ms, cryptoProvider.CreateDecryptor(byKey, byIV), CryptoStreamMode.Read);

            StreamReader sr = new StreamReader(cst);

            return sr.ReadToEnd();

        }

        #endregion

	}
}
