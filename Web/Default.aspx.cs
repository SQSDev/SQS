using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ComLib.Utils;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LogUtils.WriteInfoLog(typeof(_Default),"打开了首页");   
    }
}