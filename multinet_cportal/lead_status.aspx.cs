using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using multinet_cportal.Classes;

namespace multinet_cportal
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        GPData objBL = new GPData();
        GPDataApp objApp = new GPDataApp();
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["BSSMasterCode"] = "64";
            if (!IsPostBack)
            {

                string SignupID = base.Request.QueryString["SignupID"].ToString();
                //string SignupID = "19409";
                lblTotalCircuits.Text = Convert.ToString(Session["TotalCircuit"]);
                lblDownCircuits.Text = Convert.ToString(Session["NMSDownCount"]);
                lblSLA.Text = Convert.ToString(Session["SLA"]);
                lblOutstanding.Text = Convert.ToString(Session["OutStanding"]);
                DataTable DTGetComp = objMWS.GetNewConnectionList(user, Convert.ToString(Session["BSSMasterCode"]));
                DataTable DTSignUpStatus = objMWS.GetConnectionHistory(user, SignupID);
                if (DTSignUpStatus.Rows.Count > 0)
                {

                    SignUpIDStatus(DTSignUpStatus);
                }

                if (DTGetComp.Rows.Count > 0)
                {
                    TilesFucntion(DTGetComp);
                }
                else
                {
                    tab_2_1.InnerHtml = "";
                    tab_2_1.InnerHtml += "<div class='timeline-centered'><article class='timeline-entry'><div class='timeline-entry-inner'><div class='timeline-icon bg-success'><i class='entypo-feather'></i></div><div class='timeline-label'><h2><a href='#'><span class='date'></span></a> <span></span></h2><p></p></div></div></article></Div>";
                }
            }
        }
        protected void TilesFucntion(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[6] { new DataColumn("SignupID"), new DataColumn("CircuitName"), new DataColumn("CircuitStatus"), new DataColumn("Color"), new DataColumn("OrderDate"), new DataColumn("RFSDate") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["SignupID"].ToString(), dtCircuitName.Rows[j]["CircuitName"].ToString(), dtCircuitName.Rows[j]["CircuitStatus"].ToString(), dtCircuitName.Rows[j]["Color"].ToString(), dtCircuitName.Rows[j]["OrderDate"].ToString(), dtCircuitName.Rows[j]["RFSDate"].ToString());

            }
            tab_2_1.InnerHtml = "";
            //Tab2_Billing.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount);
            int tab_2 = totalCount - tab_1;

            for (int i = 0; i <= tab_1 - 1; i++)
            {

                if (Convert.ToString(dt1.Rows[i]["CircuitStatus"].ToString()) != "")
                {
                    tab_2_1.InnerHtml += " <div class='box-inside-tabs'><p class='star'></p><a class='mobile' href='lead_status.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["SignupID"].ToString().Trim() + "><p class='mobile'>Connection Request # " + dt1.Rows[i]["SignupID"].ToString().Trim() + "</a></p><p class='address'>OrderDate:" + dt1.Rows[i]["OrderDate"].ToString().Trim() + "</p></div>";
                }

            }
        }

        protected void SignUpIDStatus(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[3] { new DataColumn("Status"), new DataColumn("OperationlRemarks"), new DataColumn("TransactionDate") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["Status"].ToString(), dtCircuitName.Rows[j]["OperationlRemarks"].ToString(), dtCircuitName.Rows[j]["TransactionDate"].ToString());

            }
            Tab_2_2.InnerHtml = "";
            //Tab2_Billing.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount);
            
            for (int i = 0; i <= tab_1 - 1; i++)
            {

                if (Convert.ToString(dt1.Rows[i]["Status"].ToString()) != "")
                {
                    string formatted = Convert .ToString ( dt1.Rows[i]["TransactionDate"]);

                    Tab_2_2.InnerHtml += "<article class='timeline-entry'><div class='timeline-entry-inner'><div class='timeline-icon bg-success'><i class='entypo-feather'></i></div><div class='timeline-label'><h2><a href='#'><span class='date'>" + formatted.Substring(3, 8) + "</span>" + dt1.Rows[i]["Status"].ToString().Trim() + "</a> <span></span></h2><p>" + dt1.Rows[i]["OperationlRemarks"].ToString().Trim() + "</p></div></div></article>";
                }

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx", false);
        }

        protected void Years_SelectedIndexChanged(object sender, EventArgs e)
        {
            string OrdDate = Month.Text + "-" + Years.Text;
            DataTable DTOrderDate = objApp.GetNewConnectionwithCriteria(Convert.ToString(Session["BSSMasterCode"]), OrdDate);
            if (DTOrderDate.Rows.Count > 0)
            {
                TilesFucntion(DTOrderDate);
            }
            else
            {
                tab_2_1.InnerHtml = "";
                tab_2_1.InnerHtml += "<div class='timeline-centered'><article class='timeline-entry'><div class='timeline-entry-inner'><div class='timeline-icon bg-success'><i class='entypo-feather'></i></div><div class='timeline-label'><h2><a href='#'><span class='date'></span></a> <span></span></h2><p></p></div></div></article></Div>";
            }
            
        }
        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            string OrdDate = Month.Text + "-" + Years.Text;
            DataTable DTOrderDate = objApp.GetNewConnectionwithCriteria(Convert.ToString(Session["BSSMasterCode"]), OrdDate);
            if (DTOrderDate.Rows.Count > 0)
            {
                TilesFucntion(DTOrderDate);
            }
            else
            {
                tab_2_1.InnerHtml = "";
                tab_2_1.InnerHtml += "<div class='timeline-centered'><article class='timeline-entry'><div class='timeline-entry-inner'><div class='timeline-icon bg-success'><i class='entypo-feather'></i></div><div class='timeline-label'><h2><a href='#'><span class='date'></span></a> <span></span></h2><p></p></div></div></article></Div>";
            }
        }
    }
}