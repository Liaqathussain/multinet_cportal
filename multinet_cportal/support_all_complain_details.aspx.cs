using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace multinet_cportal
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        string SignupID;
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["BSSMasterCode"] = "64";
            SignupID = base.Request.QueryString["ComplaintID"].ToString();
            DataTable DTGetCompDet = objMWS.BSS_GetComplainsByID(user, SignupID);
            if (DTGetCompDet.Rows .Count >0 )
            {
                lblAllComplaint.Text = Convert .ToString (Session["AllComplaint"]);
                lblCircuit.Text = "Circuit #: " + DTGetCompDet.Rows[0]["GPID"];
                lblAddress.Text = Convert .ToString ( DTGetCompDet.Rows[0]["Address"]).Trim();
                lblBranchName.Text = Convert.ToString(DTGetCompDet.Rows[0]["CircuitName"]).Trim();
                lblComplaintID.Text = Convert.ToString(DTGetCompDet.Rows[0]["ComplaintID"]).Trim();
                lblSLA.Text = "98.5%";
                lblStatus.Text = Convert.ToString(DTGetCompDet.Rows[0]["CircuitStatus"]).Trim();


                if (DTGetCompDet.Rows.Count > 0)
                {
                    //TilesFucntion(DTGetCompDet);
                }
            }
        }

        protected void TilesFucntion(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[5] { new DataColumn("GPID"), new DataColumn("CircuitName"), new DataColumn("City"), new DataColumn("NMSStatus"), new DataColumn("SignupID") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["GPID"].ToString(), dtCircuitName.Rows[j]["CircuitName"].ToString(), dtCircuitName.Rows[j]["City"].ToString(), dtCircuitName.Rows[j]["NMSStatus"].ToString(), dtCircuitName.Rows[j]["SignupID"].ToString());

            }
            Tree.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount);
 

            for (int i = 0; i <= tab_1-1; i++)
            {
                Tree.InnerHtml += "<div class='timeline-icon bg-success'><i class='entypo-feather'></i></div><div class='timeline-label'><h2><a href='#'><span class='date'>FEB 03</span>Signup</a> <span>11:15 PM</span></h2><p>Order Received</p></div>";

            }

        }

    }
}