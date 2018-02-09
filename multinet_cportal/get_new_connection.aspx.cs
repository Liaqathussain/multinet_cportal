using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace multinet_cportal
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        AuthService.WebServiceSoapClient objMWS = new AuthService.WebServiceSoapClient();
        AuthService.AuthUser user = new AuthService.AuthUser
        {
            UserName = "Portal_01",
            Password = "Mppl@2017"

        };
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["BSSMasterCode"]= 64;
            if (!IsPostBack)
            {
                lblTotalCircuits.Text = Convert.ToString(Session["TotalCircuit"]);
                lblDown.Text = Convert.ToString(Session["NMSDownCount"]);
                lblSLA.Text = Convert.ToString(Session["SLA"]);
                lblOutstanding.Text = Convert.ToString(Session["OutStanding"]);
                DataTable DTCircuitID = objMWS.GetCustomerInovices(user, Convert.ToString(Session["BSSMasterCode"]), "0", "0", "0");
                if (DTCircuitID.Rows.Count > 0)
                {
                    CircuitID.DataTextField = "GPID";
                    DataRow dr = DTCircuitID.NewRow();
                    dr[0] = "Please-Select";
                    DTCircuitID.Rows.InsertAt(dr, 0);
                    CircuitID.DataSource = DTCircuitID;
                    CircuitID.DataBind();
                }


                DataTable DTInfra = objMWS.GetInfra(user, Convert.ToString(Session["BSSMasterCode"]));
                if (DTInfra.Rows.Count > 0)
                {
                    Infra.DataTextField = "Infra";
                    DataRow dr1 = DTInfra.NewRow();
                    dr1[0] = "Please-Select";
                    DTInfra.Rows.InsertAt(dr1, 0);
                    Infra.DataSource = DTInfra;
                    Infra.DataBind();
                }
                DataTable DTCity = objMWS.GetCities(user, Convert.ToString(Session["BSSMasterCode"]), Convert.ToString("0"));
                if (DTCity.Rows.Count > 0)
                {
                    cmbCity.DataTextField = "City";
                    DataRow dr1 = DTCity.NewRow();
                    dr1[0] = "Please-Select";
                    DTCity.Rows.InsertAt(dr1, 0);
                    cmbCity.DataSource = DTCity;
                    cmbCity.DataBind();
                }

                DataTable DTServiceUnit = objMWS.GetServiceUnit(user, Convert.ToString(Session["BSSMasterCode"]));
                if (DTServiceUnit.Rows.Count > 0)
                {
                    cmbServiceUnit.DataTextField = "ServiceUnit";
                    DataRow dr1 = DTServiceUnit.NewRow();
                    dr1[0] = "Please-Select";
                    DTServiceUnit.Rows.InsertAt(dr1, 0);
                    cmbServiceUnit.DataSource = DTServiceUnit;
                    cmbServiceUnit.DataBind();
                }
            }
           }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Boolean Flag = objMWS.CreateNewLeads(user, Convert.ToString(Session["CustomerName"]), Infra.Text, POCName.Text, ContactPhone.Text, Email.Text, txtAddress.Text , cmbCity.Text, cmbServiceUnit.Text, Description.Text);
            if (Flag == true)
            {
                lblStatus.Text = "Record Inserted Successfully";
            }
        }
    }
}