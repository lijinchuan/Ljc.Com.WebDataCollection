using IronPython.Hosting;
using LJC.FrameWork.Comm;
using Microsoft.Scripting.Hosting;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;

namespace Ljc.Com.WebDataCollection.Core
{
    public class PythonTool
    {
        static string PythonPath = ConfigHelper.AppConfig("PythonPath") ?? "python";
        static string tempfile = System.AppDomain.CurrentDomain.BaseDirectory + "\\temp\\";

        /// <summary>
        /// 需要配置
        /// </summary>
        static string[] pythonsearchpaths = System.Configuration.ConfigurationManager.AppSettings["pythonsearchpaths"].Split(new[] { "," }, StringSplitOptions.RemoveEmptyEntries);

        static PythonTool()
        {
            if (!System.IO.Directory.Exists(tempfile))
            {
                System.IO.Directory.CreateDirectory(tempfile);
            }
        }

        public static void ExecutePythFile3(string pythonfile)
        {
            ScriptRuntime scriptRuntime = ScriptRuntime.CreateFromConfiguration();
            ScriptEngine rbEng = scriptRuntime.GetEngine("python");
            var paths = rbEng.GetSearchPaths();
            foreach (var p in pythonsearchpaths)
            {
                paths.Add(p);
            }
            rbEng.SetSearchPaths(paths);

            ScriptSource source = rbEng.CreateScriptSourceFromFile(pythonfile);//设置脚本文件 
            ScriptScope scope = rbEng.CreateScope();

            source.Execute(scope);
        }

        /// <summary>
        /// 仅支持ironpython
        /// </summary>
        /// <param name="file"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public static string ExecutePythonFile(string file, string args)
        {
            ScriptEngine se = IronPython.Hosting.Python.CreateEngine();
           

            var paths = se.GetSearchPaths();
            foreach (var p in pythonsearchpaths)
            {
                paths.Add(p);
            }
            se.SetSearchPaths(paths);

            var sc= se.CreateScope();

            se.ExecuteFile(file, sc);
           
            return string.Empty;
        }

        /// <summary>
        /// 支持python通用版本
        /// </summary>
        /// <param name="file"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public static string ShellExecutePythonFile(string file,string args)
        {

            var result = ShellUtil.CallShell(PythonPath, string.Format("{0} {1}", file, args));
            if (!string.IsNullOrEmpty(result.Error))
            {
                throw new Exception(result.Error);
            }
            return result.OutPut;

        }
    }
}
