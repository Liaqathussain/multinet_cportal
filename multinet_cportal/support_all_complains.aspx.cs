using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace multinet_cportal
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["BSSMasterCode"] = "64";
            DataTable DTGetComp = objMWS.BSS_GetComplains(user, Convert .ToString (Session["BSSMasterCode"]), "", "", "", "");
            if (DTGetComp.Rows.Count > 0)
            {
                Session["AllComplaint"] = DTGetComp.Rows.Count;
                lblComplainStatus.Text = Convert .ToString ( DTGetComp.Rows.Count);
                TilesFucntionTab2(DTGetComp);
            }

        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            string SelectedDate = Month.Text + " - " + Year.Text;
            String formattedDat = "";
            String formattedDat1 = "";


            DateTime MyDate = Convert.ToDateTime(SelectedDate);
            int DaysInMonth = DateTime.DaysInMonth(MyDate.Year, MyDate.Month);
            DateTime LastDayInMonthDate = new DateTime(MyDate.Year, MyDate.Month, DaysInMonth);
            formattedDat = "1 " + LastDayInMonthDate.ToString("MMM yyyy");
            formattedDat1 = DaysInMonth + " " + LastDayInMonthDate.ToString("MMM yyyy") + " 23:59:59";

            DataTable DTGetComp = objMWS.BSS_GetComplains(user, Convert.ToString(Session["BSSMasterCode"]), "", "", formattedDat, formattedDat1);
            if (DTGetComp.Rows.Count > 0)
            {
                Session["AllComplaint"] = DTGetComp.Rows.Count;
                lblComplainStatus.Text = Convert.ToString(DTGetComp.Rows.Count);
                TilesFucntionTab2(DTGetComp);
            }



            //String Message = "Please Select Assigned Department First";
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('" + Message + "');</script>");
        }

        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            string SelectedDate = Month.Text + " - " + Year.Text;
            String formattedDat = "";
            String formattedDat1 = "";


            DateTime MyDate = Convert.ToDateTime(SelectedDate);
            int DaysInMonth = DateTime.DaysInMonth(MyDate.Year, MyDate.Month);
            DateTime LastDayInMonthDate = new DateTime(MyDate.Year, MyDate.Month, DaysInMonth);
            formattedDat = "1 " + LastDayInMonthDate.ToString("MMM yyyy");
            formattedDat1 = DaysInMonth + " " + LastDayInMonthDate.ToString("MMM yyyy") + " 23:59:59";

            DataTable DTGetComp = objMWS.BSS_GetComplains(user, Convert.ToString(Session["BSSMasterCode"]), "", "", formattedDat, formattedDat1);
            if (DTGetComp.Rows.Count > 0)
            {
                Session["AllComplaint"] = DTGetComp.Rows.Count;
                lblComplainStatus.Text = Convert.ToString(DTGetComp.Rows.Count);
                TilesFucntionTab2(DTGetComp);
            }

        }

        protected void TilesFucntionTab2(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[7] { new DataColumn("ComplaintID"), new DataColumn("TicketNo"), new DataColumn("SignupID"), new DataColumn("GPID"), new DataColumn("CircuitName"), new DataColumn("ComplainStatus"), new DataColumn("Remarks")});
            for (int i = 0; i <= dtCircuitName.Rows.Count - 1; i++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[i]["ComplaintID"].ToString(), dtCircuitName.Rows[i]["TicketNo"].ToString(), dtCircuitName.Rows[i]["SignupID"].ToString(), dtCircuitName.Rows[i]["GPID"].ToString(), dtCircuitName.Rows[i]["CircuitName"].ToString(), dtCircuitName.Rows[i]["ComplainStatus"].ToString(), dtCircuitName.Rows[i]["Remarks"].ToString());
            }


            tab_2_1.InnerHtml = "";
            tab_2_2.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount / 2);
            int tab_2 = totalCount - tab_1;

            for (int i = 0; i <= tab_1; i++)
            {

                if (dt1.Rows[i]["ComplainStatus"].ToString() != "")
                {
                    //Response.Redirect("~\\circuit_inner.aspx?SignupID=" + dt1.Rows[i]["GPID"].ToString().Trim());
                    tab_2_1.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img></p><p class='mobile'><a class='mobile' href='support_all_complain_details.aspx?ComplaintID=" + dt1.Rows[i]["ComplaintID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a><span class='text-right complain-id'>Complain ID: " + dt1.Rows[i]["ComplaintID"].ToString().Trim() + "</span></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'></p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["ComplainStatus"].ToString() + "</span></p></div>";
                }
            }

            for (int k = tab_1 + 1; k <= totalCount - 1; k++)
            {

                if (dt1.Rows[k]["ComplainStatus"].ToString() != "")
                {
                    tab_2_2.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img></p><p class='mobile'><a class='mobile' href='support_all_complain_details.aspx?ComplaintID=" + dt1.Rows[k]["ComplaintID"].ToString().Trim() + " '" + dt1.Rows[k]["GPID"].ToString().Trim() + ">" + dt1.Rows[k]["GPID"].ToString().Trim() + "</a><span class='text-right complain-id'>Complain ID: " + dt1.Rows[k]["ComplaintID"].ToString().Trim() + "</span></p><p class='branch'>" + dt1.Rows[k]["CircuitName"].ToString() + "</p><p class='address'></p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[k]["ComplainStatus"].ToString() + "</span></p></div>";
                }
            }
            
        }
    }
}