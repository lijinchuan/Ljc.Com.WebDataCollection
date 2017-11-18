using Ljc.Com.WebDataCollection.Model.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web.Http;
using System.Web.Mvc;

namespace Ljc.Com.WebDataCollection.Web.Controllers
{
    public class StrategyController : Controller
    {
        public JsonResult Add([FromBody]AddStrategyRequest request)
        {
            try
            {
                Core.StrategySafeScaner.AssertStrategySafe(request.Code);

                return new JsonResult
                {
                    ContentType = "text/json",
                    Data = new AddStrategyResponse
                    {
                        rc = 1,
                        message = "成功",
                    },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };
            }
            catch (Exception ex)
            {
                return new JsonResult
                {
                    ContentType = "text/json",
                    Data = new AddStrategyResponse
                    {
                        message = ex.Message,
                    },
                    JsonRequestBehavior = JsonRequestBehavior.AllowGet
                };
            }
        }
    }
}
