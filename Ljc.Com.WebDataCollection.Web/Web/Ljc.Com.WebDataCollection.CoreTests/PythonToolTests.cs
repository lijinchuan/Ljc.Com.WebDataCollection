using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ljc.Com.WebDataCollection.Core;
using Microsoft.VisualStudio.TestTools.UnitTesting;
namespace Ljc.Com.WebDataCollection.Core.Tests
{
    [TestClass()]
    public class PythonToolTests
    {
        [TestMethod()]
        public void ExecutePythonFileTest()
        {
            try
            {
                //string output = PythonTool.ShellExecutePythonFile(@"E:\Work\Code\newsvn\Payment\BigData\DataSelfService\Code\Ljc.Com.WebDataCollection\Ljc.Com.WebDataCollection.PyLib\Ljc.Com.WebDataCollection.PyLib\temp_1527106707.py", "job");

                PythonTool.ExecutePythFile3(@"E:\Work\Code\newsvn\Payment\BigData\DataSelfService\Code\Ljc.Com.WebDataCollection\Ljc.Com.WebDataCollection.PyLib\Ljc.Com.WebDataCollection.PyLib\test_query.py");

                string s = PythonTool.ExecutePythonFile(@"E:\Work\Code\newsvn\Payment\BigData\DataSelfService\Code\Ljc.Com.WebDataCollection\Ljc.Com.WebDataCollection.PyLib\Ljc.Com.WebDataCollection.PyLib\test_query.py", string.Empty);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
