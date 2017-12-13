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
            
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            using (PWAEntities entities = new PWAEntities())
            {
                var resp = from u in entities.SPLoginUser(txtUser.Text, txtPassword.Text) select u;
                if (resp != null)
                {
                    var user = resp.ToList();
                    if (user.Count == 1)
                    {

                        Session["Id"] = user[0].Id;
                        Session["Fname"] = user[0].Fname;
                        Session["Lname"] = user[0].Lname;
                        Session["Birthdate"] = user[0].Birthdate;
                        Session["Email"] = user[0].Email;
                        Session["Address"] = user[0].Address;
                        Session["Suburb"] = user[0].Suburb;
                        Session["Zip"] = user[0].Zip;
                        Session["City"] = user[0].City;
                        Session["Country"] = user[0].Country;
                        Session["News"] = "bbc-news";
                        Response.Redirect("~/Default.aspx", false);
                    }
                    /*
                    GridView1.DataSource = user;
                    GridView1.DataBind();
                    */
                }
            }
            
        }
    }
}