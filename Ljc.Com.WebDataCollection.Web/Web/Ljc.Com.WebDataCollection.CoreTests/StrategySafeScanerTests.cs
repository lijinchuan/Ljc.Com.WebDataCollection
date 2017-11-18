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
    public class StrategySafeScanerTests
    {
        [TestMethod()]
        public void ScanStrategyTest()
        {
            string code = "import math ";
            StrategySafeScaner.AssertStrategySafe(code);
        }
    }
}
