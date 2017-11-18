using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;

namespace Ljc.Com.WebDataCollection.Service
{
    public static class MainClass
    {
        static void Main(string[] args)
        {
            SelectorService domain = new SelectorService();
            ServiceBase.Run(domain);
        }
    }
}
