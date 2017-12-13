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
            if(Session["Id"] == null)
            {
                Response.Redirect("~/Pages/Login.aspx", true);
            }
            if (!IsPostBack)
            {
                User u = new User();
                u.firstName = (string)Session["Fname"];
                u.lastName = (string)Session["Lname"];
                u.address.mailing_address = (string)Session["Address"];
                u.address.country = (string)Session["Country"];
                u.address.city = (string)Session["City"];
                u.address.suburb = (string)Session["Suburb"];
                txtFname.Text = u.firstName;
                txtLName.Text = u.lastName;
                txtAdd1.Text = u.address.mailing_address;
                txtCity.Text = u.address.city;
                txtCountry.Text = u.address.country;
                txtSuburb.Text = u.address.suburb;
                ddNews.Text = (string)Session["News"];
            }


        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            Session["Fname"] = txtFname.Text;
            Session["Lname"] = txtLName.Text;
            Session["Address"] = txtAdd1.Text;
            Session["Country"] = txtCountry.Text;
            Session["City"] = txtCity.Text;
            Session["Suburb"] = txtSuburb.Text;
            Session["News"] = ddNews.Text;

            /*using (PWAEntities entities = new PWAEntities())
            {
                var resp = from u in entities.tblUsers
                           where u.Id == (int)Session["Id"]
                           select u;

                if (resp != null)
                {
                    var user = resp.ToList();
                    if (user.Count == 1)
                    {
                        //Update database....
                    }
                }
            }*/

        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
        }
    }
}