using System;
using System.Web;
using System.Web.UI;

namespace PWA.Controls
{

    public partial class Clock : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            String currenttime = DateTime.Now.ToLongTimeString();
            lblClockTime.Text = currenttime;
        }

    }
}
