using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace multinet_cportal
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool flag = objMWS.CreateNewLeads(user, Convert.ToString (Session["CustomerName"]), "Infra", POCName.Text, POCContactNo.Text, "POC Email", "Address", "City", "Service Unit", Comments.Text);
            //                                                                     OK                         OK               OK                                                              OK
            if (flag ==true)
                {
                    lblStatus.Text = "Record Inserted Successfully";
                }

            //CreateNewLeads
        }

        
        
    }
}