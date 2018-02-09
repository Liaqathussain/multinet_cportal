using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace multinet_cportal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String formattedDat = "";
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                //Session["BSSMasterCode"] = 64;
            this.Title = "Title of my page";
            lblCustNameTital.Text = Convert.ToString(Session["CustomerName"]);
            

            DateTime MyDate = DateTime.Now;
            int DaysInMonth = DateTime.DaysInMonth(MyDate.Year, MyDate.Month);
            DateTime LastDayInMonthDate = new DateTime(MyDate.Year, MyDate.Month, DaysInMonth);
            formattedDat = LastDayInMonthDate.ToString("MMM-yyyy");

          
            DataTable dtCircuitName = objMWS.GetCustomerInovices(user, Convert.ToString(Session["BSSMasterCode"]), "0", "0", "");
            if (dtCircuitName.Rows.Count > 0)
            {
                BillingAllStatements(dtCircuitName);
            }
            else
            {
                Tab1_Billing.InnerHtml = "";
                Tab2_Billing.InnerHtml = "";
                Tab1_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href=''></a></p><p class='branch'></p><p class='address'></p><p class='status'><span class='date'></span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><p class='branch'>" + " Attention: " + "</p></span><p class='mobile'>" + " Records Not Found " + "</p></div>";
                Tab2_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href=''></a></p><p class='branch'></p><p class='address'></p><p class='status'><span class='date'></span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><p class='branch'>" + " Attention: " + "</p></span><p class='mobile'>" + " Records Not Found " + "</p></div>";
            }
            }

        }

        //protected void month_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (IsPostBack)
        //    {
        //        Session["CurrentMonth"] = month.Text + " - " + year.Text;
                

        //        DateTime dtime = Convert.ToDateTime(Session["CurrentMonth"]);
        //        formattedDat = dtime.ToString("MMM-yyyy");
        //        Session["BSSMasterCode"] = "64";
        //        DataTable dtCircuitName = objMWS.GetCustomerInovices(user, Convert.ToString(Session["BSSMasterCode"]), "0", formattedDat, "");
        //        if (dtCircuitName.Rows.Count > 0)
        //        {
        //            BillingAllStatements(dtCircuitName);
        //        }
        //        else
        //        {
        //            Tab1_Billing.InnerHtml = "";
        //            Tab2_Billing.InnerHtml = "";
        //            Tab1_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href=''></a></p><p class='branch'></p><p class='address'></p><p class='status'><span class='date'></span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><p class='branch'>" + " Attention: " + "</p></span><p class='mobile'>" + " Records Not Found " + "</p></div>";
        //            Tab2_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href=''></a></p><p class='branch'></p><p class='address'></p><p class='status'><span class='date'></span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><p class='branch'>" + " Attention: " + "</p></span><p class='mobile'>" + " Records Not Found " + "</p></div>";
        //        }
        //    } 
        //}

        //protected void test(object sender, EventArgs e)
        //{

        //    string test = "test";
        //} 

        //protected void year_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if (IsPostBack)
        //    {
        //        Session["CurrentMonth"] = month.Text + " - " + year.Text;
        //        String formattedDat = "";
        //        //DateTime dtime = Convert.ToDateTime(Session["CurrentMonth"]);
        //        //formattedDat = dtime.ToString("MMM-yyyy");

        //        DateTime MyDate = Convert.ToDateTime(DateTime .Now);
        //        int DaysInMonth = DateTime.DaysInMonth(MyDate.Year, MyDate.Month);
        //        DateTime LastDayInMonthDate = new DateTime(MyDate.Year, MyDate.Month, DaysInMonth);
        //        formattedDat = LastDayInMonthDate.ToString("MMM-yyyy");


        //        //Session["BSSMasterCode"] = "14";
        //        DataTable dtCircuitName = objMWS.GetCustomerInovices(user, Convert.ToString(Session["BSSMasterCode"]), "0", formattedDat, "");
        //        if (dtCircuitName.Rows.Count > 0)
        //        {
        //            BillingAllStatements(dtCircuitName);
        //        }
        //        else
        //        {
        //            Tab1_Billing.InnerHtml = "";
        //            Tab2_Billing.InnerHtml = "";
        //            Tab1_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href=''></a></p><p class='branch'></p><p class='address'></p><p class='status'><span class='date'></span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><p class='branch'>" + " Attention: " + "</p></span><p class='mobile'>" + " Records Not Found " + "</p></div>";
        //            Tab2_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href=''></a></p><p class='branch'></p><p class='address'></p><p class='status'><span class='date'></span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><p class='branch'>" + " Attention: " + "</p></span><p class='mobile'>" + " Records Not Found " + "</p></div>";
        //        }
        //    }  
        //}

        

        protected void BillingAllStatements(DataTable dtCircuitName)
        {
            DataTable dt1 = new DataTable();
            dt1.Columns.AddRange(new DataColumn[6] { new DataColumn("GPID"), new DataColumn("CircuitName"), new DataColumn("InvoiceNo"), new DataColumn("InvoiceAmount"), new DataColumn("Period"), new DataColumn("PaymentStatus") });
            for (int j = 0; j <= dtCircuitName.Rows.Count - 1; j++)
            {
                dt1.Rows.Add(dtCircuitName.Rows[j]["GPID"].ToString(), dtCircuitName.Rows[j]["CircuitName"].ToString(), dtCircuitName.Rows[j]["InvoiceNo"].ToString(), dtCircuitName.Rows[j]["InvoiceAmount"].ToString(), dtCircuitName.Rows[j]["Period"].ToString(), dtCircuitName.Rows[j]["PaymentStatus"].ToString());

            }
            Tab1_Billing.InnerHtml = "";
            Tab2_Billing.InnerHtml = "";
            int totalCount = dt1.Rows.Count;
            int tab_1 = (totalCount / 2);
            int tab_2 = totalCount - tab_1;

            for (int i = 0; i <= tab_1; i++)
            {

                if ( Convert .ToString (dt1.Rows[i]["Period"].ToString()) != "")
                {
                    Tab1_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='billing_all_statements_inner.aspx?InvoiceNo=" + dt1.Rows[i]["InvoiceNo"].ToString().Trim() + "?" + formattedDat + " '" + dt1.Rows[i]["GPID"].ToString().Trim() + ">" + dt1.Rows[i]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[i]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[i]["InvoiceNo"].ToString() + "</p><p class='status'><span class='date'>" + dt1.Rows[i]["Period"].ToString() + "</span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><img src='../../assets/global/img/support-icon-2.png'> Support</span></a><a href='billing_all_statements.aspx'><span class='small-icons'><img src='../../assets/global/img/invoice-icon.png'> Invoice</span><span class='amount pull-right'>" + dt1.Rows[i]["InvoiceAmount"].ToString() + "</span></a></div>";
                }
   
            }

            for (int k = tab_1 + 1; k <= totalCount - 1; k++)
            {
                if (dt1.Rows[k]["Period"].ToString() != "")
                {
                    Tab2_Billing.InnerHtml += "<div class='box-inside-tabs-active'><p class='pull-right'><img class='star' src='../../assets/global/img/empty-star.png'></p><p class='mobile'><a class='mobile' href='billing_all_statements_inner.aspx?InvoiceNo=" + dt1.Rows[k]["InvoiceNo"].ToString().Trim() + "?" + formattedDat + " '" + dt1.Rows[k]["GPID"].ToString().Trim() + ">" + dt1.Rows[k]["GPID"].ToString().Trim() + "</a></p><p class='branch'>" + dt1.Rows[k]["CircuitName"].ToString() + "</p><p class='address'>" + dt1.Rows[k]["InvoiceNo"].ToString() + "</p><p class='status'><span class='date'>" + dt1.Rows[k]["Period"].ToString() + "</span></p><p><a href='support_all_complains.aspx'><span class='small-icons'><img src='../../assets/global/img/support-icon-2.png'> Support</span></a><a href='billing_all_statements.aspx'><span class='small-icons'><img src='../../assets/global/img/invoice-icon.png'> Invoice</span><span class='amount pull-right'>" + dt1.Rows[k]["InvoiceAmount"].ToString() + "</span></a></div>";
                }
            }



        }
    }
}