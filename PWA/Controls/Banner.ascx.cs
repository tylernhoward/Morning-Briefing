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
            String timeCat;
            String name = "Tyler";
            String location = "Baltimore, MD";

            int currenthour = DateTime.Now.Hour;
            if(currenthour < 12 && currenthour > 3){
                timeCat = "Morning";
            }
            else if (currenthour >= 12 && currenthour < 20){
                timeCat = "Afternoon";
            }
            else{
                timeCat = "Night";
            }


            lblBan.Text = "Good " + timeCat + " " + name;
            lblTime.Text = "The time is ";
            lblLocation.Text = " in " + location;
         }
    }
}