using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace Ljc.Com.WebDataCollection.Core
{
    public class StrategySafeScaner
    {
        private static string[] SafePackages = new[] { "baseLib", "numpy", "pandas", "math", "time", "urllib2", "urllib", "requests" };

        //import\s([\w\.]+)\s?
        //from\s+[\w\.]+\s+import\s+
        //__import__[\(\'\s]+([\w\.]+)[\)\'\s]+
        private static Regex importRegexCheck = new Regex(@"import[\'""\s]+([\w\.]+)[\'""\s]?|from[\'""\s]+([\w\.])+[\'""\s]+import[\'""\s]+|__import__[\(\'""\s]+([\w\.]+)[\)\'""\s]+", RegexOptions.IgnoreCase);

        static StrategySafeScaner()
        {
        }

        /// <summary>
        /// 安全检查code
        /// </summary>
        /// <param name="code"></param>
        public static void AssertStrategySafe(string code)
        {
            if (string.IsNullOrWhiteSpace(code))
            {
                return;
            }

            List<string> models = new List<string>();
            var ms= importRegexCheck.Matches(code);
            foreach (Match m in ms)
            {
                var model=m.Groups[1].Value;
                if (string.IsNullOrWhiteSpace(model))
                {
                    continue;
                }
                bool contains = false;
                foreach (var package in SafePackages)
                {
                    if (model == package || model.StartsWith(package + "."))
                    {
                        contains = true;
                        break;
                    }
                }
                if (!contains)
                {
                    models.Add(model);
                }
            }

            if (models.Count > 0)
            {
                throw new Exception(string.Format("不允许引用模块:{0}",string.Join("、",models)));
            }

            return;
        }
    }
}
