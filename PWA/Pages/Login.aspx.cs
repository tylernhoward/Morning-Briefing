using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace PWA.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                FileStream fs = new FileStream(@"Login", FileMode.Open);

            }
            catch(Exception ex)
            {
                PWA.App_Code.ExceptionUtility.LogException(ex, "Login");    
            }
        }

    }
}