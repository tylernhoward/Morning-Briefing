using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PWA.App_Code;
using System.Web.Script.Serialization;
using System.IO;

namespace PWA.Pages
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //The first time the page loads is not a postback
            if (!IsPostBack)
            {
                User u = new User();
                u.firstName = "Tyler";
                u.lastName = "Howard";
                u.address.mailing_address = "8000 York Road";
                u.address.country = "USA";
                u.address.city = "Baltimore";
                u.address.state = "Maryland";
                txtFname.Text = u.firstName;
                txtLName.Text = u.lastName;
                txtAdd1.Text = u.address.mailing_address;
                txtCity.Text = u.address.city;
                txtCountry.Text = u.address.country;
                txtState.Text = u.address.state;
                JavaScriptSerializer JSS = new JavaScriptSerializer();
                string JSONObject = JSS.Serialize(u);
            }
            else
            {   HttpCookie JSON = Request.Cookies.Get("JSON");
                if (JSON != null)
                {
                    JavaScriptSerializer JSS = new JavaScriptSerializer();
                    User u = JSS.Deserialize<User>(JSON.Value);
                    txtFname.Text = u.firstName;
                    txtLName.Text = u.lastName;
                    txtAdd1.Text = u.address.mailing_address;
                    txtCity.Text = u.address.city;
                    txtCountry.Text = u.address.country;
                    txtState.Text = u.address.state;
                }

            }
        }
    }
}