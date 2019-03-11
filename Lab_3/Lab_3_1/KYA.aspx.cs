using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_3_1
{
    public partial class KYA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ServerValidation(object source, ServerValidateEventArgs args)
        {
            try
            {
                int n = int.Parse(args.Value);
                for(int i = 2; i <= Math.Sqrt(n); i++)
                {
                    if(n % i == 0)
                    {
                        args.IsValid = true;
                    }
                }
            }
            catch (Exception ex)
            {
                args.IsValid = false;
            }
        }
    }
}