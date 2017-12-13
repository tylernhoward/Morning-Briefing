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
            String name = (string)Session["Fname"];
            String location = (string)Session["City"];
            timeIcon.Attributes["Class"] = "fa fa-sun-o";
            int currenthour = DateTime.Now.Hour;
            if(currenthour < 12 && currenthour > 3){
                timeCat = "Morning";
                timeIcon.Attributes["Class"] = "fa fa-sun-o";
            }
            else if (currenthour >= 12 && currenthour < 20){
                timeCat = "Afternoon";
                timeIcon.Attributes["Class"] = "fa fa-sun-o";
            }
            else{
                timeCat = "Night";
                timeIcon.Attributes["Class"] = "fa fa-moon-o";
            }
            lblBan.Text = GetGlobalResourceObject("WebResources", "Good").ToString() + " "
                        + GetGlobalResourceObject("WebResources", timeCat).ToString() + " "
                        + name;
            lblTime.Text = GetGlobalResourceObject("WebResources", "Time").ToString();
            if(location!=null)lblLocation.Text = GetGlobalResourceObject("WebResources", "In").ToString() + " " + location;
         }
    }
}