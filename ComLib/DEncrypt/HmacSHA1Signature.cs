
using System;
using System.Diagnostics;
using System.Security.Cryptography;
using System.Text;

namespace ComLib.DEncrypt
{
    public class HmacSha1Signature
    {
        private static readonly Encoding Encoding = Encoding.UTF8;
        public  string SignatureMethod
        {
            get { return "HmacSHA1"; }
        }

        public  string SignatureVersion
        {
            get { return "1"; }
        }

        public string ComputeSignatureCore(string key, string data)
        {
            Debug.Assert(!string.IsNullOrEmpty(data));

            using (var algorithm = KeyedHashAlgorithm.Create(SignatureMethod.ToUpperInvariant()))
            {
                algorithm.Key = Encoding.GetBytes(key.ToCharArray());
                return Convert.ToBase64String(
                    algorithm.ComputeHash(Encoding.GetBytes(data.ToCharArray())));
            }
        }

    }
}
