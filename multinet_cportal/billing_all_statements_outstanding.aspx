<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="billing_all_statements_outstanding.aspx.cs" Inherits="multinet_cportal.WebForm3" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../../assets/global/css/billing-all-statements-outstanding.css" rel="stylesheet" type="text/css">
 <div class="container-fluid">
            <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 header-box">
                          
                        <div class="col-md-12">
                            <div class="tab-pane fade active in" id="tab_2_1">

                                <h3 class="main-address">Billing</h3>
                                <h1 class="main-title"><asp:Label ID="lblCustName" runat="server" Text="Label"></asp:Label></h1>
                                
                                <button type="submit" class="active-tab tab-buttons btn green-haze pull-right header-btns">   <a href="billing_all_statements.aspx"> 
                                All Statements
                               </a>
                                </button>
                                
                                <button type="submit" class="btn tab-buttons green-haze pull-right header-btns"> <a href="billing_all_statements_outstanding.aspx">
                                Mini Statement
                                </a>
                                </button>
                                
                            </div>
                        </div>
                                    
                    </div>
            </div>
        </div>
    
</div>

 <div class="page-content">
        
        <div class="container-fluid">
        
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light">

                                <div class="portlet-body">
                                    
                                    <div class="col-md-12">
                                    
                                        <div class="tab-pane fade active in" id="Div1">

                                            <a href="#" class="labels-top pull-right"><img src="../../assets/global/img/pdf-icon.png" class="icons"><asp:Button ID="btnSubmit"  Text="DownLoad" runat="server" onclick="btnSubmit_Click" BackColor="White" BorderStyle="None" ></asp:Button></a>
                                            
                                            
                                            <a href="support_all_complains.aspx" class="labels-top pull-right"><img src="../../assets/global/img/support-icon.png" class="icons"> Support</a>
                                            
                                            <a href="#" class="labels-top pull-right" onclick="printPage('Default.aspx');" runat ="server"><img src="../../assets/global/img/print-icon.png" class="icons"> Print</a>

                                        </div>
                                        
                                        
                                    </div>
                                    
                                    <div class="row border-bottom">
                                        
                                        <div class="col-md-6">
                                            <h1 class="heading-bold main">INVOICE</h1>
                                        </div>
                                    
                                        <div class="col-md-6 text-right right-section">
                                                <h3 class="heading-bold"></h3>
                                                <p class="date"></p>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="row">
                                    
                                        <div class="col-md-6 border-between">
                                            <h3 class="heading-bold sub-main">Client Information</h3>
                                            <p class="address"><asp:Label ID="lblCustomerName" runat="server" Text="Label"></asp:Label></p>
                                            <p class="address"><asp:Label ID="lblAddress" runat="server" Text="Label"></asp:Label></p>
                                            
                                        </div>
                                    
                                        <div class="col-md-6 text-right right-section">
                                            <h3 class="heading-bold sub-main"></h3>
                                            <p class="circuit-number-title"><span class="circuit-number"></span></p>
                                            <p class="status"><span class="status-label-active"></span></p>
                                        </div>
                                    
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1269px" 
                    ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" 
                    ToolPanelWidth="200px" Visible="False" Width="1082px" />
                <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                    <Report FileName="CrystalReport1.rpt">
                    </Report>
                </CR:CrystalReportSource>
                
                    </div>
            </div>  
            
            <div class="container-fluid margin-both-sides services-section">
                <div class="row">

                    <div class="col-md-12 text-right">
                        <span class="currency">Change Currency</span>
                        <label class="checkbox-inline">
                           <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                        </label>

                    </div>

                    <div class="col-md-12">
                        <table class="table table-responsive">
                        <thead>

                            <tr>
                                <th style="width: 100px;"><h3 class="thead-title" >SERVICES</h3></th>
                                <th></th>
                                <th><h3 class="thead-title">USD</h3></th>
                                <th><h3 class="thead-title">PKR</h3></th>
                            </tr>

                        </thead>
                        <tbody>

                            <tr>
                                <th class="thead-services">
                                    VSAT DATA
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td>
                                <td class="thead-amount"><asp:Label ID="lblMRCUSD" runat="server" Text="Label"></asp:Label></td>
                                <td class="thead-amount"><asp:Label ID="lblMRCPKR" runat="server" Text="Label"></asp:Label></td>
                                
                            </tr>
                            <tr>
                                <th class="thead-services">
                                    FLL
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td>
                                <td class="thead-amount"><asp:Label ID="lblFllUSD" runat="server" Text="Label"></asp:Label></td>
                                <td class="thead-amount"><asp:Label ID="lblFLLPKR" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <th class="thead-services">
                                    Data
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td> 
                                <td class="thead-amount"><asp:Label ID="lblDataUSD" runat="server" Text="Label"></asp:Label></td>
                                <td class="thead-amount"><asp:Label ID="lblDataPKR" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                            <tr>
                                <th class="thead-services">
                                    Internet
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td>
                                <td class="thead-amount"><asp:Label ID="lblInternetUSD" runat="server" Text="Label"></asp:Label></td>
                                <td class="thead-amount"><asp:Label ID="lblInternetPKR" runat="server" Text="Label"></asp:Label></td>
                            </tr>

                        </tbody>
                        </table>

                    </div>

                </div>
            </div>
        
            
            <div class="container-fluid margin-both-sides-total services-section-total" style="background-color: #414042">
                <div class="row">

                    <div class="col-md-12">
                        <table class="table table-responsive">
                            <thead>

                                <tr class="border-top">
                                    <th><h3 class="thead-title-sub-total">Sub Total</h3></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th><h3 class="final-amount"><asp:Label ID="lblTotalVal" runat="server" Text="Label"></asp:Label></h3></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>

                            </thead>
                        </table>

                    </div>

                </div>
            </div>

        </div>

</asp:Content>
