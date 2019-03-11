using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_3_1
{
    public partial class BBB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CompareEndTodayValidator.ValueToCompare = DateTime.Now.ToShortDateString();
        }
    }
}