using Ljc.Com.WebDataCollection.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Ljc.Com.WebDataCollection.Core
{
    public class StrategyDataCore
    {
        static string StrategyCodeDir = System.Configuration.ConfigurationManager.AppSettings["StrategyCodeDir"];

        public static void InsertStrategy(StrategyEntity entity)
        {
            if(entity==null)
            {
                return;
            }
        }

        public static string TestStrategy(string code)
        {
            var codeid = Math.Abs(code.GetHashCode());

            string filepath = Path.Combine(StrategyCodeDir, "temp_" + codeid + ".py");

            if (!File.Exists(filepath))
            {
                using (StreamWriter sw = new StreamWriter(filepath, false, Encoding.UTF8))
                {
                    sw.Write(code);
                }
            }

            try
            {
                //var result= PythonTool.ExecutePythonFile(filepath, "job");
                var result = PythonTool.ShellExecutePythonFile(filepath, "job");
                return result;
            }
            finally
            {
                File.Delete(filepath);
            }
        }
    }
}
