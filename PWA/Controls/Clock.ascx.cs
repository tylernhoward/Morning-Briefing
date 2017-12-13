using System;
using System.Web;
using System.Web.UI;

namespace PWA.Controls
{

    public partial class Clock : System.Web.UI.UserControl
    {
        
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            String currenttime = DateTime.Now.ToString("hh:mm:ss");
            lblClockTime.Text = currenttime;
        }

    }
}
