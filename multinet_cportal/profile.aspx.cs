using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace multinet_cportal
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {
                CustomerNameTop.Text =  Session["CustomerName"].ToString();
                lblCustName.Text =Session["CustomerName"].ToString();
                lblCityTop.Text =Session["City"] .ToString ();
                lblCity.Text = Session["City"].ToString();
                lblState.Text = Session["State"].ToString();
                lblCuntry.Text = Session["Country"] .ToString ();
                lblSLA.Text = Session["SLA"].ToString();
                lblTotalCircuit.Text = Session["TotalCircuit"].ToString();
                lblNMSDownCount.Text = Session["NMSDownCount"].ToString();
                lblOutstanding.Text = Session["OutStanding"].ToString();
               
        }
    }
}