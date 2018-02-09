<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="billing_all_statements.aspx.cs" Inherits="multinet_cportal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<link href="../../assets/global/css/billing.css" rel="stylesheet" type="text/css">

<div class="container-fluid">
            <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 header-box">
                          
                        <div class="col-md-12">
                            <div class="tab-pane fade active in" id="tab_2_1">

                                <h3 class="main-address">Billing</h3>
                                <h1 class="main-title"><asp:Label ID="lblCustNameTital" runat="server" Text="Label"></asp:Label></h1>
                                
                                <button type="submit" class="active-tab btn green-haze pull-right header-btns">
                                All Statements
                                </button>
                                
                                <button type="submit" class="btn green-haze pull-right header-btns"> <a href="billing_all_statements_outstanding.aspx">
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
                                    
                                    <div class="tab-content scrollbar" id="style-1">
                                        <div class="filter-box" style ="height:30px">
                                            

                                           <%-- <div class="controls"> 
                                                <div class="form-group">

                                                          <div class="input-group">

                                                            <span class="input-group-btn">
                                                                <div class="selectdiv">

                                                                    <asp:DropDownList CssClass="form-control" name="month" id="month" AutoPostBack ="true"  
                                                                        runat="server" onselectedindexchanged="month_SelectedIndexChanged">
                                                                        <asp:ListItem Enabled="False" Selected="True" Text="Month" Value="Month" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Jan" Value="Jan" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Feb" Value="Feb" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Mar" Value="Mar" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Apr" Value="Apr" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="May" Value="May" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Jun" Value="Jun" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Jul" Value="Jul" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Aug" Value="Aug" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Sep" Value="Sep" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Oct" Value="Oct" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Nov" Value="Nov" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Dec" Value="Dec" />
                                                                    </asp:DropDownList>
                                                            
                                                                </div>
                                                            </span>

                                                         </div>
                                                </div>
                                            </div>

                                            <div class="controls"> 
                                                <div class="form-group">

                                                          <div class="input-group">

                                                                <span class="input-group-btn">
                                                                    <div class="selectdiv">

                                                                        <asp:DropDownList CssClass="form-control" name="year" id="year" AutoPostBack ="true"  runat="server" 
                                                                            onselectedindexchanged="year_SelectedIndexChanged">
                                                                            <asp:ListItem Enabled="False" Selected="True" Text="Year" Value="Year" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2018" Value="2018" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2017" Value="2017" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2016" Value="2016" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2015" Value="2015" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2014" Value="2014" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2013" Value="2013" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2012" Value="2012" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2011" Value="2011" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2010" Value="2010" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2009" Value="2009" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2008" Value="2008" />
                                                                            <asp:ListItem Enabled="True" Selected="False" Text="2007" Value="2007" />
                                                                        </asp:DropDownList> 
                                                            
                                                                    </div>
                                                                </span>

                                                          </div>
                                                </div>
                                            </div>--%>
                                        </div>



                                        <div class="col-md-6">
                                            <div class="tab-pane fade active in" id="Tab1_Billing"  runat="server">
                                                
                                                <%--<div class="box-inside-tabs-active">
                                                
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label1" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label2" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label3" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label4" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label5" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>

                                               <%-- <div class="box-inside-tabs-active">
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label6" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label7" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label8" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label9" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label10" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-active">
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label11" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label12" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label13" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label14" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label15" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-active">
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label16" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label17" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label18" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label19" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label20" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="tab-pane fade active in" id="Tab2_Billing" runat ="server">
                                                
                                                <%--<div class="box-inside-tabs-inactive">
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label21" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label22" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label23" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label24" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label25" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-inactive">
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label26" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label27" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label28" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label29" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label30" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>

                                               <%-- <div class="box-inside-tabs-inactive">
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label31" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label32" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label33" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label34" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label35" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-inactive">
                                                    <p class="star">
                                                        <i class="fa fa-star pull-right"></i>
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label36" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label37" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label38" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="date"><asp:Label ID="Label39" runat="server" Text="Nov, 2017"></asp:Label> 
                                                    </p>
                                                    <p>
                                                        <a href="support-all-complain-details.html">
                                                           <span class="small-icons"><img src="../../assets/global/img/support-icon-2.png"> Support</span>
                                                        </a>
                                                        <a href="billing-all-statements.html">
                                                            <span class="small-icons"><img src="../../assets/global/img/invoice-icon.png"> Invoice</span>
                                                            <span class="amount pull-right"><asp:Label ID="Label40" runat="server" Text="15,000 PKR"></asp:Label></span>
                                                        </a>
                                                    </p>
                                                    
                                                </div>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                    </div>

        </div>
    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
        <div class="page-footer">
            <div class="container">
                 <span class="copyright">Copyright &copy; 2017. All rights reserved to Multinet</span> <span class="uan-number pull-right" target="_blank">UAN: 111-021-021</span>
            </div>
        </div>

    </div>

</asp:Content>
