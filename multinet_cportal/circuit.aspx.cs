using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using multinet_cportal.Classes;
using System.Drawing;

namespace multinet_cportal
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        AuthService.WebServiceSoapClient  objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {

           
             if (!IsPostBack)
            {

            //Session["BSSMasterCode"] = "14";

            DataTable DTCity = objMWS.GetCities(user, Convert.ToString(Session["BSSMasterCode"]), Convert.ToString("0"));

            if (DTCity.Rows.Count > 0)
            {
                RadCity.DataTextField = "City";
                DataRow dr = DTCity.NewRow();
                dr[0] = "Please-Select";
                DTCity.Rows.InsertAt(dr, 0);
                RadCity.DataSource = DTCity;
                RadCity.DataBind();

            }


            DataTable DTInfra = objMWS.GetInfra(user, Convert.ToString(Session["BSSMasterCode"]));
            if (DTInfra.Rows.Count > 0)
            {

                RadInfra.DataTextField = "Infra";
                DataRow dr = DTInfra.NewRow();
                dr[0] = "Please-Select";
                DTInfra.Rows.InsertAt(dr, 0);
                RadInfra.DataSource = DTInfra;
                RadInfra.DataBind();
            }

            DataTable DTBandwidth = objMWS.GetBandwidth(user, Convert.ToString(Session["BSSMasterCode"]));
            if (DTBandwidth.Rows.Count > 0)
            {
                RadBandwidth.DataTextField = "Bandwidth";
                DataRow dr = DTBandwidth.NewRow();
                dr[0] = "Please-Select";
                DTBandwidth.Rows.InsertAt(dr, 0);
                RadBandwidth.DataSource = DTBandwidth;
                RadBandwidth.DataBind();
            }

            DataTable DTRegion = objMWS.GetRegion(user, Convert.ToString(Session["BSSMasterCode"]));
            if (DTRegion.Rows.Count > 0)
            {
                RadRegion.DataTextField = "Region";
                DataRow dr = DTRegion.NewRow();
                dr[0] = "Please-Select";
                DTRegion.Rows.InsertAt(dr, 0);
                RadRegion.DataSource = DTRegion;
                RadRegion.DataBind();
            }
            DataTable DTServiceUnit = objMWS.GetServiceUnit(user, Convert.ToString(Session["BSSMasterCode"]));
            if (DTServiceUnit.Rows.Count > 0)
            {
                RadServiceUnit.DataTextField = "ServiceUnit";
                DataRow dr = DTServiceUnit.NewRow();
                dr[0] = "Please-Select";
                DTServiceUnit.Rows.InsertAt(dr, 0);
                RadServiceUnit.DataSource = DTServiceUnit;
                RadServiceUnit.DataBind();
            }

            DataTable dtCircuitName = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("0"), Convert.ToString("0"), Convert.ToString("0"), Convert.ToString("Please-Select"));
            if (dtCircuitName.Rows.Count > 0)
            {
                GetCircuitDetails(dtCircuitName);
            }

          }
        }          
    

        protected void RadCity_SelectedIndexChanged(object sender, EventArgs e)
         {
             DataTable dtCircuitName = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), RadCity.Text, RadInfra.Text, RadServiceUnit.Text, RadBandwidth.Text, RadRegion.Text, Convert.ToString(0), Convert.ToString(0), Convert.ToString(0), "Please-Select");
             if (dtCircuitName.Rows.Count > 0)
             {
                 GetCircuitDetails(dtCircuitName);
             }
        }
        protected void RadInfra_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dtCircuitName = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), RadCity.Text, RadInfra.Text, RadServiceUnit.Text, RadBandwidth.Text, RadRegion.Text, Convert.ToString(0), Convert.ToString(0), Convert.ToString(0), "Please-Select");
            if (dtCircuitName.Rows.Count > 0)
            {
                GetCircuitDetails(dtCircuitName);
            }
        }
        protected void RadBandwidth_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dtCircuitName = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), RadCity.Text, RadInfra.Text, RadServiceUnit.Text, RadBandwidth.Text, RadRegion.Text, Convert.ToString(0), Convert.ToString(0), Convert.ToString(0), "Please-Select");
            if (dtCircuitName.Rows.Count > 0)
            {
                GetCircuitDetails(dtCircuitName);
            }
        }

        protected void RadServiceUnit_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dtCircuitName = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), RadCity.Text, RadInfra.Text, RadServiceUnit.Text, RadBandwidth.Text, RadRegion.Text, Convert.ToString(0), Convert.ToString(0), Convert.ToString(0), "Please-Select");
            if (dtCircuitName.Rows.Count > 0)
            {
                GetCircuitDetails(dtCircuitName);
            }
        }
        protected void RadRegion_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dtCircuitName = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), RadCity.Text, RadInfra.Text, RadServiceUnit.Text, RadBandwidth.Text, RadRegion.Text, Convert.ToString(0), Convert.ToString(0), Convert.ToString(0), "Please-Select");
            if (dtCircuitName.Rows.Count > 0)
            {
                GetCircuitDetails(dtCircuitName);
            }
        }


        protected void GetCircuitDetails(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[5] { new DataColumn("GPID"), new DataColumn("CircuitName"), new DataColumn("City"), new DataColumn("NMSStatus"), new DataColumn("SignupID") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1 ; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["GPID"].ToString(), dtCircuitName.Rows[j]["CircuitName"].ToString(), dtCircuitName.Rows[j]["City"].ToString(), dtCircuitName.Rows[j]["NMSStatus"].ToString(), dtCircuitName.Rows[j]["SignupID"].ToString());

            }
            Tab_1.InnerHtml = "";
            Tab_2.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount / 2);
            int tab_2 = totalCount - tab_1;

            for (int i = 0; i <= tab_1; i++)
            {

                if (dt1.Rows[i]["NMSStatus"].ToString() == "Up")
                {
                    //Response.Redirect("~\\circuit_inner.aspx?SignupID=" + dt1.Rows[i]["GPID"].ToString().Trim());
                    Tab_1.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p></div>";
                }

                else if (dt1.Rows[i]["NMSStatus"].ToString() == "Down")
                {
                    Tab_1.InnerHtml += "<div class='box-inside-tabs-inactive'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-inactive'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p></div>";
                }

                else
                {
                    Tab_1.InnerHtml += "<div class='box-inside-tabs-unreachable'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-unreachabale'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p></div>";
                }

            }

            for (int k = tab_1 + 1; k <= totalCount - 1; k++)
            {

                if (dt1.Rows[k]["NMSStatus"].ToString() == "Up")
                {
                    Tab_2.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[k]["SignupID"].ToString().Trim() + " '" + dt1.Rows[k]["GPID"].ToString().Trim() + ">" + dt1.Rows[k]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[k]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[k]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[k]["NMSStatus"].ToString() + "</span></p></div>";
                }

                else if (dt1.Rows[k]["NMSStatus"].ToString() == "Down")
                {
                    Tab_2.InnerHtml += "<div class='box-inside-tabs-inactive'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[k]["SignupID"].ToString().Trim() + " '" + dt1.Rows[k]["GPID"].ToString().Trim() + ">" + dt1.Rows[k]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[k]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[k]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-inactive'>" + dt1.Rows[k]["NMSStatus"].ToString() + "</span></p></div>";
                }

                else
                {
                    Tab_2.InnerHtml += "<div class='box-inside-tabs-unreachable'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[k]["SignupID"].ToString().Trim() + " '" + dt1.Rows[k]["GPID"].ToString().Trim() + ">" + dt1.Rows[k]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[k]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[k]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-unreachabale'>" + dt1.Rows[k]["NMSStatus"].ToString() + "</span></p></div>";
                }

            }
            


        }
    
    }
}