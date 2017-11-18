using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ljc.Com.WebDataCollection.Model
{
    public class StrategyEntity:LJC.FrameWork.Data.Mongo.MongoDocumentObject
    {
        public string Uid
        {
            get;
            set;
        }

        public string Code
        {
            get;
            set;
        }

        public DateTime CDate
        {
            get;
            set;
        }

        public DateTime MDate
        {
            get;
            set;
        }

        public DateTime BuildDate
        {
            get;
            set;
        }

        public string BuildError
        {
            get;
            set;
        }

        public string FilePath
        {
            get;
            set;
        }

        public bool Valid
        {
            get;
            set;
        }
    }
}
