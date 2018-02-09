using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace multinet_cportal
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        public static string SignupID = "";
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {

            SignupID = base.Request.QueryString["SignupID"].ToString();
            DataTable dtTechIno = objMWS.GetCircuitCompleteDetail(user, SignupID);
            if (dtTechIno.Rows.Count > 0)
            {
                GPID.Text = dtTechIno.Rows[0]["GPID"].ToString();
                lblCity.Text = dtTechIno.Rows[0]["city"].ToString();
                lblSLA.Text = dtTechIno.Rows[0]["SLA"].ToString();
                lblStatus.Text = dtTechIno.Rows[0]["CircuitStatus"].ToString();
                //------------------
                lblGIGPID.Text = dtTechIno.Rows[0]["GPID"].ToString();
                lblBandwidth.Text = dtTechIno.Rows[0]["Bandwidth"].ToString();
                lblCircuitName.Text = dtTechIno.Rows[0]["CircuitName"].ToString();
                lblPrimaryIPAddress.Text = dtTechIno.Rows[0]["Primary_IPAddress"].ToString();
                lblPrimaryIPRange.Text = dtTechIno.Rows[0]["Primary_IPRange"].ToString();
                lblPrimaryIPGatway.Text = dtTechIno.Rows[0]["Primary_Gateway"].ToString();
            }

        }
    }
}