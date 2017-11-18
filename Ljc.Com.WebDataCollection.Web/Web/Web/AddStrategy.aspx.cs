using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ljc.Com.WebDataCollection.Web
{
    public partial class AddStrategy : System.Web.UI.Page
    {
        protected string ImprotCode = @"#/usr/bin/env python
# -*- coding: UTF-8 -*-
import numpy as np
import pandas as pd
from baseLib import *";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                TBCode.Text = ImprotCode;
                HeadCode.Value = ImprotCode;
            }
        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            try
            {
                var code = this.TBCode.Text;
                Core.StrategySafeScaner.AssertStrategySafe(code);

                string result=Core.StrategyDataCore.TestStrategy(code);

                this.LitResult.Text ="结果:<pre>"+ result+"</pre>";
            }
            catch (Exception ex)
            {
                this.LitResult.Text = ex.Message;

            }
        }
    }
}