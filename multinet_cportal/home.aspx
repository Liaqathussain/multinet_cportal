<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="multinet_cportal.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../../assets/global/css/home.css" rel="stylesheet" type="text/css">
<div class="page-content">
        
        <div class="container">
            <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a href="circuit.aspx">
                            <div class="dashboard-stat blue-madison blue-stat">
                                <div class="visual">
                                </div>

                                    <div class="details">
                                        <div class="desc">
                                             Total Circuits
                                        </div>
                                        <div class="number">
                                            <asp:Label ID="lblTotalCircuit" runat="server" Text="Label"></asp:Label>
                                             
                                        </div>
                                    </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a href="circuit_down.aspx">
                            <div class="dashboard-stat red-intense red-stat">
                                <div class="visual">
                                </div>
                                <div class="details">
                                    <div class="desc">
                                         Down
                                    </div>
                                    <div class="number">
                                         <asp:Label ID="lblDownCircuit" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat orange orange-stat">
                            <div class="visual">
                            </div>
                            <div class="details">
                                <div class="desc">
                                     SLA
                                </div>
                                <div class="number">
                                     
                                    <asp:Label ID="lblSLA" runat="server" Text="Label"></asp:Label>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a href="billing_all_statements_outstanding.aspx">
                            <div class="dashboard-stat green-haze green-stat">
                                <div class="visual">
                                </div>
                                <div class="details">
                                    <div class="desc">
                                         Outstanding
                                    </div>
                                    <div class="number">
                                         
                                        <asp:Label ID="lblOutStanding" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                </div>
            </div>
        
        <div class="container">
        
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light">

                                <div class="portlet-body">
                                    <ul class="nav nav-pills">
                                        <li class="active-tab active">
                                            <a href="#tab_2_1" data-toggle="tab" aria-expanded="false" class="btn green-haze border-radius margin-of-tabs one">
                                            Favourites </a>
                                        </li>
                                        <li class="active-tab">
                                            <a href="#tab_2_3" data-toggle="tab" aria-expanded="false" class="btn green-haze border-radius margin-of-tabs three">
                                            Connection Status </a>
                                        </li>
                                        <li class="active-tab">
                                            <a href="#tab_2_2" data-toggle="tab" aria-expanded="false" class="btn green-haze border-radius margin-of-tabs two">
                                            Billing Summary </a>
                                        </li>
                                        
                                        
                                        <div class="dropdown pull-right">
                                          <button class="btn green-haze border-radius margin-of-tabs dropdown-toggle selectdiv" type="button" data-toggle="dropdown">Get New Connection
                                          </button>
                                          <ul class="dropdown-menu">
                                            <li class="first-child-dropdown"><a href="get_new_connection.aspx">Create New <img src="../../assets/global/img/add_icon.png" class="icons-dropdown"></a></li>
                                            <li><a href="lead_status.aspx?SignupID=19409"> Check Status <img src="../../assets/global/img/signal_icon.png" class="icons-dropdown"></a></li>
                                                
                                          </ul>
                                        </div>
                                        
                                    </ul>
                                    <div class="tab-content scrollbar" id="style-1">
                                        <div class="tab-pane fade active in" id="tab_2_1" runat ="server">
                                            <a href="lead_status.aspx">

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <%--<p class="mobile"><asp:Label ID="Label1" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label2" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label3" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label4" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>--%>
                                                    
                                                </div>

                                            </a>

                                            <%--<div class="box-inside-tabs-active">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label5" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label6" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label7" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label8" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    
                                            </div>--%>
                                            
                                            <%--<div class="box-inside-tabs-active">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label9" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label10" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label11" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label12" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    
                                            </div>--%>

                                           <%-- <div class="box-inside-tabs-active">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label13" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label14" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label15" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label16" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    
                                            </div>--%>
                                            
                                        </div>
                                        <div class="tab-pane fade" id="tab_2_2">
                                            <a href="home.aspx">
                                                <div class="box-inside-tabs-inactive" id="Tab_1" runat="server">
                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty.png">
                                                    </p>
                                                   <%-- <p class="mobile"><asp:Label ID="Label17" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label18" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label19" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label20" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>--%>
                                                    
                                                   <%-- <p class="status-payment">Last 3 Months: </p>
                                                    <p class="status-payment-label">
                                                        <span class="month-year">Jan, 2018:</span><asp:Label ID="lblJan" class="amount" runat="server" Text=""></asp:Label>
                                                        <span class="month-year">Feb, 2018:</span><asp:Label ID="lblFeb" class="amount" runat="server" Text=""></asp:Label>
                                                        <span class="month-year">Mar, 2018:</span><asp:Label ID="lblMar" class="amount" runat="server" Text=""></asp:Label>
                                                    </p>--%>
                                                </div>
                                            </a>
                                            <%--<div class="box-inside-tabs-active">
                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label24" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label25" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label26" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label27" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    <p class="status-payment">Last 3 Months: </p>
                                                    <p class="status-payment-label">
                                                        <span class="month-year">Jan, 2017:</span><asp:Label ID="Label28" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Feb, 2017:</span><asp:Label ID="Label29" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Mar, 2017:</span><asp:Label ID="Label30" class="amount" runat="server" Text="150,000"></asp:Label>
                                                    </p>
                                                </div>--%>
                                          <%-- <div class="box-inside-tabs-active">
                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label31" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label32" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label33" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label34" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    <p class="status-payment">Last 3 Months: </p>
                                                    <p class="status-payment-label">
                                                        <span class="month-year">Jan, 2017:</span><asp:Label ID="Label35" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Feb, 2017:</span><asp:Label ID="Label36" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Mar, 2017:</span><asp:Label ID="Label37" class="amount" runat="server" Text="150,000"></asp:Label>
                                                    </p>
                                                </div>--%>
                                            <%--<div class="box-inside-tabs-active">
                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label38" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label39" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label40" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label41" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    <p class="status-payment">Last 3 Months: </p>
                                                    <p class="status-payment-label">
                                                        <span class="month-year">Jan, 2017:</span><asp:Label ID="Label42" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Feb, 2017:</span><asp:Label ID="Label43" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Mar, 2017:</span><asp:Label ID="Label44" class="amount" runat="server" Text="150,000"></asp:Label>
                                                    </p>
                                                </div>--%>
                                            <%--<div class="box-inside-tabs-active">
                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label45" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label46" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label47" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label48" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    <p class="status-payment">Last 3 Months: </p>
                                                    <p class="status-payment-label">
                                                        <span class="month-year">Jan, 2017:</span><asp:Label ID="Label49" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Feb, 2017:</span><asp:Label ID="Label50" class="amount" runat="server" Text="150,000"></asp:Label>
                                                        <span class="month-year">Mar, 2017:</span><asp:Label ID="Label51" class="amount" runat="server" Text="150,000"></asp:Label>
                                                    </p>
                                                </div>--%>
                                        </div>
                                        <div class="tab-pane fade" id="tab_2_3">
                                            <a href="lead_status.aspx">
                                                <div class="box-inside-tabs-inactive" id="Tab_3" runat ="server">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <%--<p class="mobile"><asp:Label ID="Label52" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label53" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label54" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label55" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>--%>
                                                    
                                                </div>
                                            </a>
                                            <%--<div class="box-inside-tabs-active">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label56" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label57" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label58" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label59" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    
                                                </div>--%>
                                           <%-- <div class="box-inside-tabs-active">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label60" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label61" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label62" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label63" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    
                                                </div>--%>
                                            <%--<div class="box-inside-tabs-active">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label64" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label65" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label66" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label67" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    
                                                </div>--%>
                                            <%--<div class="box-inside-tabs-active">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label68" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label69" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label70" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label71" class="status-label-active" runat="server" Text="Active"></asp:Label></p>
                                                    
                                                </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                    </div>

        </div>
</asp:Content>
