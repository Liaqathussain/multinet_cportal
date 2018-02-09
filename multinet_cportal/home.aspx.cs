using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Globalization;
using System.Text.RegularExpressions;

namespace multinet_cportal
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        DataTable DTBilligSummary;
        string FirstMonth, SecondMonth, ThirdMonth;
        int FirstMonthVal, SecondMonthVal, ThirdMonthVal;
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
                //Connection Status
                DataTable DTGetComp = objMWS.GetNewConnectionList(user, Convert.ToString(Session["BSSMasterCode"]));
                if (DTGetComp.Rows.Count > 0)
                {
                    TilesFucntionTab2(DTGetComp);
                }

                //Billing Summary 3 Month
                DTBilligSummary = objMWS.GetCustomerMonthlyInvoices(user, Convert.ToInt32(Session["BSSMasterCode"]), "0");
                if (DTBilligSummary.Rows.Count > 0)
                {
                    int counter = 0;
                    int[] MonthlyArray = new int[3];
                    int[] YearlyArray = new int[3];
                    int[] AmountArray = new int[3];


                    if (DTBilligSummary.Rows.Count > 0)
                    {
                        string str1 = Convert.ToString(DTBilligSummary.Rows[0]["Column1"].ToString());
                        string str11 = Convert.ToString(DTBilligSummary.Rows[1]["Column1"].ToString());
                        int result1 = int.Parse(str1.Replace(",", ""));
                        int result11 = int.Parse(str11.Replace(",", ""));

                        string str2 = Convert.ToString(DTBilligSummary.Rows[0]["Column2"].ToString());
                        string str22 = Convert.ToString(DTBilligSummary.Rows[1]["Column2"].ToString());
                        int result2 = int.Parse(str2.Replace(",", ""));
                        int result22 = int.Parse(str22.Replace(",", ""));

                        string str3 = Convert.ToString(DTBilligSummary.Rows[0]["Column3"].ToString());
                        string str33 = Convert.ToString(DTBilligSummary.Rows[1]["Column3"].ToString());
                        int result3 = int.Parse(str3.Replace(",", ""));
                        int result33 = int.Parse(str33.Replace(",", ""));


                        FirstMonthVal = Convert.ToInt32(result1) + (result11);
                        SecondMonthVal = Convert.ToInt32(result2) + (result22);
                        ThirdMonthVal = Convert.ToInt32(result3) + (result33);

                    }



                    DateTime dt1 = DateTime.Now;
                    DateTime dt2 = DateTime.Now;
                    DateTime dt3 = DateTime.Now;
                    dt1 = dt1.AddMonths(-2);
                    dt2 = dt2.AddMonths(-1);
                    dt3 = dt3.AddMonths(0);

                    MonthlyArray[0] = dt1.Month;
                    MonthlyArray[1] = dt2.Month;
                    MonthlyArray[2] = dt3.Month;


                    YearlyArray[0] = dt1.Year;
                    YearlyArray[1] = dt2.Year;
                    YearlyArray[2] = dt3.Year;
                    DateTime strDate1 = new DateTime(YearlyArray[0], MonthlyArray[0], 1);
                    DateTime strDate2 = new DateTime(YearlyArray[1], MonthlyArray[1], 1);
                    DateTime strDate3 = new DateTime(YearlyArray[2], MonthlyArray[2], 1);
                    FirstMonth = strDate1.ToString("MMMM") + " - " + strDate1.ToString("yyyy");
                    SecondMonth = strDate2.ToString("MMMM") + " - " + strDate2.ToString("yyyy");
                    ThirdMonth = strDate3.ToString("MMMM") + " - " + strDate3.ToString("yyyy");


                }


                //Bulling Summary
                DataTable dtCircuitName = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("0"), Convert.ToString("0"), Convert.ToString("0"), Convert.ToString("Please-Select"));

                if (dtCircuitName.Rows.Count > 0)
                {
                    lblTotalCircuit.Text = Convert.ToString(dtCircuitName.Rows.Count);
                    lblDownCircuit.Text = Convert.ToString(Session["NMSDownCount"]);
                    lblSLA.Text = Convert.ToString(Session["SLA"]);
                    lblOutStanding.Text = Convert.ToString(Session["OutStanding"]);
                    TilesFucntion(dtCircuitName);
                }

                DataTable dtCircuitNameFavourites = objMWS.GetCiruitsMainDetail(user, Convert.ToString(Session["BSSMasterCode"]), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("Please-Select"), Convert.ToString("1"), Convert.ToString("0"), Convert.ToString("0"), Convert.ToString("Please-Select"));

                if (dtCircuitNameFavourites.Rows.Count > 0)
                {
                    TilesFucntionFavourites(dtCircuitNameFavourites);
                }
            }
        }



        //Bulling Summary
        protected void TilesFucntion(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[8] { new DataColumn("GPID"), new DataColumn("CircuitName"), new DataColumn("City"), new DataColumn("NMSStatus"), new DataColumn("SignupID"), new DataColumn("Column1"), new DataColumn("Column2"), new DataColumn("Column3") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["GPID"].ToString(), dtCircuitName.Rows[j]["CircuitName"].ToString(), dtCircuitName.Rows[j]["City"].ToString(), dtCircuitName.Rows[j]["NMSStatus"].ToString(), dtCircuitName.Rows[j]["SignupID"].ToString(), DTBilligSummary.Rows[0]["column1"].ToString(), DTBilligSummary.Rows[0]["column2"].ToString(), DTBilligSummary.Rows[0]["column3"].ToString());

            }
            Tab_1.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount);

            for (int i = 0; i <= tab_1-1; i++)
            {

                if (dt1.Rows[i]["NMSStatus"].ToString() == "Up")
                {
                    //Response.Redirect("~\\circuit_inner.aspx?SignupID=" + dt1.Rows[i]["GPID"].ToString().Trim());
                    Tab_1.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p><p class='status-payment'>Last 3 Months: </p><p class='status-payment-label'><span class='month-year'>" + FirstMonth + ":</span><a class='amount'> " + FirstMonthVal + " </a><span class='month-year'>" + SecondMonth + ":</span><a class='amount'> " + SecondMonthVal + " </a><span class='month-year'>" + ThirdMonth + ":</span><a class='amount'> " + ThirdMonthVal + " </a></p></div>";
                }

                else if (dt1.Rows[i]["NMSStatus"].ToString() == "Down")
                {
                    Tab_1.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p><p class='status-payment'>Last 3 Months: </p><p class='status-payment-label'><span class='month-year'>" + FirstMonth + ":</span><a class='amount'> " + FirstMonthVal + " </a><span class='month-year'>" + SecondMonth + ":</span><a class='amount'> " + SecondMonthVal + " </a><span class='month-year'>" + ThirdMonth + ":</span><a class='amount'> " + ThirdMonthVal + " </a></p></div>";
                }

                else
                {
                    Tab_1.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p><p class='status-payment'>Last 3 Months: </p><p class='status-payment-label'><span class='month-year'>" + FirstMonth + ":</span><a class='amount'> " + FirstMonthVal + " </a><span class='month-year'>" + SecondMonth + ":</span><a class='amount'> " + SecondMonthVal + " </a><span class='month-year'>" + ThirdMonth + ":</span><a class='amount'> " + ThirdMonthVal + " </a></p></div>";
                }

            }
        }

        protected void TilesFucntionFavourites(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[9] { new DataColumn("GPID"), new DataColumn("CircuitName"), new DataColumn("City"), new DataColumn("NMSStatus"), new DataColumn("SignupID"), new DataColumn("Column1"), new DataColumn("Column2"), new DataColumn("Column3"), new DataColumn("Favourites") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["GPID"].ToString(), dtCircuitName.Rows[j]["CircuitName"].ToString(), dtCircuitName.Rows[j]["City"].ToString(), dtCircuitName.Rows[j]["NMSStatus"].ToString(), dtCircuitName.Rows[j]["SignupID"].ToString(), DTBilligSummary.Rows[0]["column1"].ToString(), DTBilligSummary.Rows[0]["column2"].ToString(), DTBilligSummary.Rows[0]["column3"].ToString(), dtCircuitName.Rows[j]["IsFav"].ToString());

            }
            tab_2_1.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount);

         
                for (int i = 0; i <= tab_1-1; i++)
                {
                    if (dt1.Rows[i]["Favourites"].ToString() == "True")
                    {
                        //Response.Redirect("~\\circuit_inner.aspx?SignupID=" + dt1.Rows[i]["GPID"].ToString().Trim());
                        tab_2_1.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p></div>";
                    }
                    else
                    {
                        tab_2_1.InnerHtml += "<div class='box-inside-tabs-unreachable'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='circuit_inner.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["City"].ToString() + "</p><p class='status'>Status:<span class='status-label-unreachabale'>" + dt1.Rows[i]["NMSStatus"].ToString() + "</span></p></div>";
                    }

                }
        }

        //Connection Status
        protected void TilesFucntionTab2(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[3] {new DataColumn("CircuitName"),  new DataColumn("CircuitStatus"), new DataColumn("SignupID") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["CircuitName"].ToString(), dtCircuitName.Rows[j]["CircuitStatus"].ToString(), dtCircuitName.Rows[j]["SignupID"].ToString());
            }


            Tab_3.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount);

            for (int i = 0; i <= tab_1 - 1; i++)
            {

                if (dt1.Rows[i]["CircuitStatus"].ToString() == "Up")
                {
                    //Response.Redirect("~\\circuit_inner.aspx?SignupID=" + dt1.Rows[i]["GPID"].ToString().Trim());
                    Tab_3.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='lead_status.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + "123456-123" + ">" + "123456-123" + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["CircuitStatus"].ToString() + "</span></p></div>";
                }

                else if (dt1.Rows[i]["CircuitStatus"].ToString() == "Down")
                {
                    Tab_3.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='lead_status.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + "123456-123" + ">" + "123456-123" + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["CircuitStatus"].ToString() + "</span></p></div>";
                }

                else
                {
                    Tab_3.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='lead_status.aspx?SignupID=" + dt1.Rows[i]["SignupID"].ToString().Trim() + " '" + "123456-123" + ">" + "123456-123" + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='status'>Status:<span class='status-label-active'>" + dt1.Rows[i]["CircuitStatus"].ToString() + "</span></p></div>";
                }

            }
        }
    }
}