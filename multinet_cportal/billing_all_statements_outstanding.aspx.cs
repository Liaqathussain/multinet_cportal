using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using multinet_cportal.Classes;
using CrystalDecisions.CrystalReports;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Shared;
using multinet_cportal;
using CrystalDecisions.Web;

using System.IO;
using iTextSharp.text.pdf.draw;
using System.Data.OleDb;
using System.Net.Mail;
using System.Net;
using System.Drawing;
using System.IO.Compression;
using System.Text.RegularExpressions;
using System.ComponentModel;
using System.Data.SqlClient;


using System.Collections.Generic;

namespace multinet_cportal
{

    public partial class WebForm3 : System.Web.UI.Page
    {
        GPData objBL = new GPData();
        String InvoiceNumber = "";
        int TotalVal = 0;
        ReportDocument reportDocu;
        CrystalDecisions.Shared.ParameterValues crParameterValues;
        CrystalDecisions.Shared.ParameterDiscreteValue crParameterDiscreteValue;

        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["BSSMasterCode"] = "64";
            lblCustomerName.Text = Convert.ToString(Session["CustomerName"]);
            lblAddress.Text = Convert.ToString(Session["City"]);
            lblCustName.Text = Convert.ToString(Session["CustomerName"]);
            DataTable dtMiniStatement = objMWS.GetCustomerProdutSummary(user, Convert.ToInt32(Session["BSSMasterCode"]), "0");

            if (dtMiniStatement.Rows.Count > 0)
            {
                for (int i = 0; i <= dtMiniStatement.Rows.Count - 1; i++)
                {
                   
                    if (dtMiniStatement.Rows[i]["Product"].ToString().Trim() == "VSAT DATA")
                    {
                        int MRCPKR = int.Parse(dtMiniStatement.Rows[i]["MRCPKR"].ToString().Replace(",", ""));
                        int MRCUSD = int.Parse(dtMiniStatement.Rows[i]["MRCUSD"].ToString());
                        lblMRCPKR.Text = Convert.ToString(MRCPKR);
                        lblMRCUSD.Text = Convert.ToString(MRCUSD);
                    }
                    if (dtMiniStatement.Rows[i]["Product"].ToString().Trim() == "FLL")
                    {
                        int FLLPKR = int.Parse(dtMiniStatement.Rows[i]["MRCPKR"].ToString().Replace(",", ""));
                        int FllUSD = int.Parse(dtMiniStatement.Rows[i]["MRCUSD"].ToString().Replace(",", ""));
                        lblFLLPKR.Text = Convert.ToString(FLLPKR);
                        lblFllUSD.Text = Convert.ToString(FllUSD);
                    }
                    if (dtMiniStatement.Rows[i]["Product"].ToString().Trim() == "Internet")
                    {
                        int InternetPKR = int.Parse(dtMiniStatement.Rows[i]["MRCPKR"].ToString().Replace(",", ""));
                        int InternetUSD = int.Parse(dtMiniStatement.Rows[i]["MRCUSD"].ToString().Replace(",", ""));
                        lblInternetPKR.Text = Convert.ToString(InternetPKR);
                        lblInternetUSD.Text = Convert.ToString(InternetUSD);
                    }
                    if (dtMiniStatement.Rows[i]["Product"].ToString().Trim() == "Data")
                    {
                        int DataPKR = int.Parse(dtMiniStatement.Rows[i]["MRCPKR"].ToString().Replace(",", ""));
                        int DataUSD = int.Parse(dtMiniStatement.Rows[i]["MRCUSD"].ToString().Replace(",", ""));
                        lblDataPKR.Text = Convert.ToString(DataPKR);
                        lblDataUSD.Text = Convert.ToString(DataUSD);
                    }
                }


            }

            TotalVal  = Convert .ToInt32 ( lblDataPKR.Text) + Convert .ToInt32 (lblInternetPKR.Text) + Convert .ToInt32 (lblFLLPKR.Text) + Convert .ToInt32 (lblMRCPKR.Text);
            lblTotalVal.Text = Convert .ToString ( TotalVal);
        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["InvoiceNo"] = "";
            PDFSendToCustomers();
        }
        private void PDFSendToCustomers()
        {
            try
            {
                    String InvoiceDate = "";
                    String InvoiceMonth = "";
                    String InvoiceToDate = "";
                    ReportDocument cryRpt = new ReportDocument();

                    Session["CurrentMonth"] = "";

                    string startdate = Convert.ToString(Session["StartDate"]);
                    string enddate = Convert.ToString(Session["EndDate"]);
                    //DataTable dt_NRFView = obj_NRFView.GetNRF(nrf_id);
                    //DataTable dtInvoice = objMWS.GetInvoiceDetailForPDF(user, startdate, enddate, Convert.ToString(Session["InvoiceNo"]));
                    DataTable dtInvoice = objMWS.GetInvoiceDetailForPDF(user, "2017-04-01", "2017-04-30", "EBU-MT-0104854");
                    
                    if (dtInvoice.Rows.Count > 0)
                    {
                        InvoiceDate = Convert.ToString(dtInvoice.Rows[0]["Billing From"]);
                        InvoiceToDate = Convert.ToString(dtInvoice.Rows[0]["Billing To"]);
                        InvoiceNumber = Convert.ToString(dtInvoice.Rows[0]["Invoice Number"]);
                    }
                    cryRpt.Load(HttpContext.Current.Server.MapPath("~/Reports/" + "CrystalReportNew.rpt"));
                    this.CrystalReportViewer1.ReportSource = cryRpt;

                    cryRpt.SetParameterValue("@B_POSTED", 1);
                    cryRpt.SetParameterValue("@FROM_DATE", InvoiceDate);
                    cryRpt.SetParameterValue("@TO_DATE", InvoiceToDate);
                    cryRpt.SetParameterValue("@SOPNUMBE", InvoiceNumber);
                    cryRpt.SetParameterValue("@FromInvPrint", InvoiceDate);
                    cryRpt.SetParameterValue("@ToInvPrint", InvoiceToDate);

                    CrystalReportViewer1.RefreshReport();
                    cryRpt.Database.Tables[0].SetDataSource(dtInvoice);

                    if (dtInvoice.Rows.Count > 0)
                    {
                        try
                        {
                            ExportOptions CrExportOptions = default(ExportOptions);
                            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
                            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
                            DiskFileDestinationOptions diskFileDestinationOptions = new DiskFileDestinationOptions();
                            ExcelFormatOptions formatTypeOptions = new ExcelFormatOptions();

                            diskFileDestinationOptions.DiskFileName = HttpContext.Current.Server.MapPath("~/Reports/" + InvoiceNumber + ".pdf");

                            CrExportOptions = cryRpt.ExportOptions;

                            var _with1 = CrExportOptions;
                            _with1.ExportDestinationType = ExportDestinationType.DiskFile;
                            _with1.ExportFormatType = ExportFormatType.PortableDocFormat;
                            _with1.DestinationOptions = CrDiskFileDestinationOptions;
                            _with1.FormatOptions = CrFormatTypeOptions;

                            cryRpt.ExportToDisk(ExportFormatType.PortableDocFormat, HttpContext.Current.Server.MapPath("~/Reports/" + InvoiceNumber) + ".pdf");
                            cryRpt.Close();
                           
                            Response.Clear();
                            Response.ContentType = "application/octet-stream";
                            Response.AddHeader("Content-Disposition", "attachment; filename=" +  InvoiceNumber + ".pdf");
                            Response.TransmitFile(HttpContext.Current.Server.MapPath("~/Reports/" + InvoiceNumber) + ".pdf");
                            Response.End();
                            

                        }
                        catch (Exception ex)
                        {
                            //Interaction.MsgBox(ex.ToString);
                        }
                    }

                }
                catch (Exception ex)
                {
                    throw new Exception(ex.StackTrace);
                }
            }

        
    }            
    
}