using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PWA.Controls
{
    public partial class Banner : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String timeCat = "Morning";
            String name = "Tyler";
            String time = "12:02";
            String location = "Baltimore, MD";

            lblBan.Text = "Good " + timeCat + " " + name;
            lblTime.Text = "The time is " + time + " in " + location;
        }
    }
}