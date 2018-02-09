using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using multinet_cportal.Classes;
using multinet_cportal.AuthService;
using System.Configuration;
using System.Data.SqlClient;

namespace multinet_cportal.Classes
{
    
    public class GPData
    {
        AuthService.WebServiceSoapClient objBSS = new AuthService.WebServiceSoapClient();
        private static DBEngineType _eDBType;
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        clsDBAccess objDBAcess;

        public GPData()
        {
            SqlConnection con = new SqlConnection(constr);
            clsDBAccess objDBAcess = new clsDBAccess(constr, _eDBType);
        }

        public DataTable AuthenticateUser(string username, string Password)
        {
            string[,] para = { { "@username", username }, { "@Password", Password } };
            clsDBAccess objDBAcess = new clsDBAccess(constr, _eDBType);
            DataTable dt_GNF = objDBAcess.SP_Datatable("VerifyUser", para);
            return dt_GNF;
        }
        public DataTable GetOutstandingDet(string CustomerID)
        {
            string[,] para = { { "@username", CustomerID } };
            clsDBAccess objDBAcess = new clsDBAccess(constr, _eDBType);
            DataTable dt_GNF = objDBAcess.SP_Datatable("Customer_Open_Invoices_Detail", para);
            return dt_GNF;
        }

        public DataTable GetInvoiceForPDF(string FROM_DATE, string TO_DATE, string SOPNUMBE) 
        {
            string[,] para = { { "@B_POSTED", "1" }, { "@FROM_DATE", FROM_DATE }, { "@TO_DATE", TO_DATE }, { "@SOPNUMBE", SOPNUMBE }, { "@FromInvPrint", FROM_DATE }, { "@ToInvPrint", TO_DATE } };
            
            clsDBAccess objDBAcess = new clsDBAccess(constr, _eDBType);
            DataTable dt_GNF = objDBAcess.SP_Datatable("sp_App_GetDetailsforPDF", para);
            return dt_GNF;
        }

        public DataTable GetNewConnectionwithCriteria(string BSSMasterCode, string OrderDate)
        {
            string[,] para = { { "@BSSMasterCode", BSSMasterCode }, { "@OrderDate", OrderDate }};

            clsDBAccess objDBAcess = new clsDBAccess(constr, _eDBType);
            DataTable dt_GNF = objDBAcess.SP_Datatable("sp_GetNewConnectionListWithCriteria", para);
            return dt_GNF;
        }

        }

    } 

