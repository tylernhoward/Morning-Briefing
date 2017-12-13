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
            
        }
        protected void Submit_Click(object sender, EventArgs e){
            log4net.Config.XmlConfigurator.Configure();
            try
            {
                using (PWAEntities entities = new PWAEntities())
                {
                    tblUser user = new tblUser();
                    user.Fname = txtFirstName.Text;
                    user.Lname = txtLastName.Text;
                    user.Birthdate = Convert.ToDateTime(txtDOB.Text).Date;
                    user.Email = txtEmail.Text;
                    user.Password = txtPass.Text;
                    user.Address = txtAddress.Text;
                    user.Suburb = txtSuburb.Text;
                    user.Zip = txtZip.Text;
                    user.City = txtCity.Text;
                    user.Country = ddCountry.Text;
                    entities.tblUsers.Add(user);
                    entities.SaveChanges();

                }
            }
            catch (Exception ex)
            {
                logger.Error("Register Error", ex);
            }
          
            Response.Redirect("~/Pages/Login.aspx", false);
        }
    }
}