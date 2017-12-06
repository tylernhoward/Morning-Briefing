using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using log4net;

namespace PWA.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        private static readonly ILog logger = log4net.LogManager.GetLogger(
            System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            /*log4net.Config.XmlConfigurator.Configure();
            try
            {
                FileStream fs = new FileStream(@"Register", FileMode.Open);

            }
            catch (Exception ex)
            {
                //PWA.App_Code.ExceptionUtility.LogException(ex, "Register");
                logger.Error("Register Error", ex);
            }*/
        }
        protected void Submit_Click(object sender, EventArgs e){
            
        }
    }
}