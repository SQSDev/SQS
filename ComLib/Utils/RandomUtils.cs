using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComLib.Utils
{
    /// <summary>
    /// 随机数静态类
    /// </summary>
    public class RandomUtils
    {
        private static Random _random = new Random();
        private static int rep = 0;
        /// <summary>
        /// 随机生成不重复数字字符串
        /// </summary>
        /// <param name="codeCount">生成个数</param>
        /// <returns></returns>
        public static string GenerateCheckCodeNum(int codeCount)
        {
            string str = string.Empty;
            long num2 = DateTime.Now.Ticks + rep;
            rep++;
            Random random = new Random(((int)(((ulong)num2) & 0xffffffffL)) | ((int)(num2 >> rep)));
            for (int i = 0; i < codeCount; i++)
            {
                int num = random.Next();
                str = str + ((char)(0x30 + ((ushort)(num % 10)))).ToString();
            }
            return str;
        }


        /// <summary>
        /// 随机生成字符串（数字和字母混和）
        /// </summary>
        /// <param name="codeCount">生成个数</param>
        /// <returns></returns>
        public static string GenerateCheckCode(int codeCount)
        {
            string str = string.Empty;
            long num2 = DateTime.Now.Ticks + rep;
            rep++;
            Random random = new Random(((int)(((ulong)num2) & 0xffffffffL)) | ((int)(num2 >> rep)));
            for (int i = 0; i < codeCount; i++)
            {
                char ch;
                int num = random.Next();
                if ((num % 2) == 0)
                {
                    ch = (char)(0x30 + ((ushort)(num % 10)));
                }
                else
                {
                    ch = (char)(0x41 + ((ushort)(num % 0x1a)));
                }
                str = str + ch.ToString();
            }
            return str;
        }

        #region 生成一个指定范围的随机整数
        /// <summary>
        /// 生成一个指定范围的随机整数，该随机数范围包括最小值，但不包括最大值
        /// </summary>
        /// <param name="minNum">最小值</param>
        /// <param name="maxNum">最大值</param>
        public static int GetRandomInt(int minNum, int maxNum)
        {
            return _random.Next(minNum, maxNum);
        }
        #endregion

        #region 生成一个0.0到1.0的随机小数
        /// <summary>
        /// 生成一个0.0到1.0的随机小数
        /// </summary>
        public double GetRandomDouble()
        {
            return _random.NextDouble();
        }
        #endregion

        #region 对一个数组进行随机排序
        /// <summary>
        /// 对一个数组进行随机排序
        /// </summary>
        /// <typeparam name="T">数组的类型</typeparam>
        /// <param name="arr">需要随机排序的数组</param>
        public Array GetRandomArray<T>(T[] arr)
        {
            //对数组进行随机排序的算法:随机选择两个位置，将两个位置上的值交换

            //交换的次数,这里使用数组的长度作为交换次数
            int count = arr.Length;

            //开始交换
            for (int i = 0; i < count; i++)
            {
                //生成两个随机数位置
                int randomNum1 = GetRandomInt(0, arr.Length);
                int randomNum2 = GetRandomInt(0, arr.Length);

                //定义临时变量
                T temp;

                //交换两个随机数位置的值
                temp = arr[randomNum1];
                arr[randomNum1] = arr[randomNum2];
                arr[randomNum2] = temp;
            }
            return arr;
        }
        #endregion

        public static int Mininum = 1;
        public static int Maxnum = 65535;
        public static int RandomLength = 8;

        private static string RandomString = "0123456789ABCDEFGHIJKMLNOPQRSTUVWXYZ";
        private static Random Random = new Random(DateTime.Now.Second);

        #region public static string GetRandomString() 产生随机字符
        /// <summary>
        /// 产生随机字符
        /// </summary>
        /// <returns>字符串</returns>
        public static string GetRandomString()
        {
            string returnValue = string.Empty;
            for (int i = 0; i < RandomLength; i++)
            {
                int r = Random.Next(0, RandomString.Length - 1);
                returnValue += RandomString[r];
            }
            return returnValue;
        }
        #endregion

        #region public static int GetRandom()
        /// <summary>
        /// 产生随机数
        /// </summary>
        /// <returns>随机数</returns>
        public static int GetRandom()
        {
            return Random.Next(Mininum, Maxnum);
        }
        #endregion

        #region public static int GetRandom(int minimum, int maximal)
        /// <summary>
        /// 产生随机数
        /// </summary>
        /// <param name="Mininum">最小值</param>
        /// <param name="maxnum">最大值</param>
        /// <returns>随机数</returns>
        public static int GetRandom(int mininum, int maxnum)
        {
            return Random.Next(mininum, maxnum);
        }
        #endregion

        #region 生成随机数字
        /// <summary>
        /// 生成随机数字
        /// </summary>
        /// <param name="length">生成长度</param>
        public static string Number(int Length)
        {
            return Number(Length, false);
        }

        /// <summary>
        /// 生成随机数字
        /// </summary>
        /// <param name="Length">生成长度</param>
        /// <param name="Sleep">是否要在生成前将当前线程阻止以避免重复</param>
        public static string Number(int Length, bool Sleep)
        {
            if (Sleep) System.Threading.Thread.Sleep(3);
            string result = "";
            System.Random random = new Random();
            for (int i = 0; i < Length; i++)
            {
                result += random.Next(10).ToString();
            }
            return result;
        }
        #endregion
    }
}
