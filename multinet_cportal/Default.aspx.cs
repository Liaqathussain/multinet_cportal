using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using multinet_cportal.Classes;
using System.Data;

namespace multinet_cportal
{

    public partial class WebForm5 : System.Web.UI.Page
    {
         AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                String login = txtLogin.Text;
                string Password = txtPassword.Text;
                //String login = "appadmin64";
                //string Password = "Multi@64";
                AuthService.WebServiceSoapClient objApp = new AuthService.WebServiceSoapClient();

                AuthService.AuthUser user = new AuthService.AuthUser
                {
                    UserName = "Portal_01",
                    Password = "Mppl@2017"
                };

                DataTable DTLogIn = objMWS.CustomerCredential(user, login, Password);
                if (DTLogIn != null)
                {
                    Session["BSSMasterCode"] = DTLogIn.Rows[0]["BSSMasterCode"];
                    Session["UserName"] = DTLogIn.Rows[0]["UserName"];
                    Session["CustomerName"] = DTLogIn.Rows[0]["CustomerName"];
                    Session["Country"] = DTLogIn.Rows[0]["Country"];
                    Session["City"] = DTLogIn.Rows[0]["City"];
                    Session["State"] = DTLogIn.Rows[0]["State"];
                    Session["SLA"] = DTLogIn.Rows[0]["SLA"];
                    Session["TotalCircuit"] = DTLogIn.Rows[0]["TotalCircuit"];
                    Session["NMSDownCount"] = DTLogIn.Rows[0]["NMSDownCount"];
                    Session["OutStanding"] = DTLogIn.Rows[0]["OutStanding"];
                    Session["CurrentMonth"] = "Dec-2017";
                    DataTable DTUserRole = objMWS.GetUserAccountAccess(user, Convert.ToString(DTLogIn.Rows[0]["UserID"]));
                    Response.Redirect("home.aspx", false);
                }
                else
                {
                    lblStatus.Text  = "In-Valid UserID or Password";
                }
            } 
        }
    }
}