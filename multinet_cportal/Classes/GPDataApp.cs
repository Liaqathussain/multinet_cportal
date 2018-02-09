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
    
    public class GPDataApp
    {
        AuthService.WebServiceSoapClient objBSS = new AuthService.WebServiceSoapClient();
        private static DBEngineType _eDBType;
        string constr = ConfigurationManager.ConnectionStrings["constrApp"].ConnectionString;
        clsDBAccess objDBAcess;

        public GPDataApp()
        {
            SqlConnection con = new SqlConnection(constr);
            clsDBAccess objDBAcess = new clsDBAccess(constr, _eDBType);
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

