<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="support_all_complains.aspx.cs" Inherits="multinet_cportal.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link href="../../assets/global/css/support-all-complains.css" rel="stylesheet" type="text/css">
<div class="page-content">
        
        <div class="container">
            <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<!--
                        <div class="dashboard-stat blue-madison blue-stat">
                            <div class="visual">
                            </div>
                            <div class="details">
                                <div class="desc">
                                     Complains
                                </div>
                                <div class="number">
                                     150
                                </div>
                            </div>
                            
                        </div>
-->
                    </div>
                    <%--<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat orange orange-stat">
                            <div class="visual">
                            </div>
                            <div class="details">
                                <div class="desc">
                                     Complains Status
                                </div>
                                <div class="number">
                                     
                                    
                                </div>
                            </div>
                            
                        </div>--%>
                    </div>
                    <div class="col-lg-3 col-md-offset-4 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat blue-madison blue-stat">
                            <div class="visual">
                            </div>
                            <div class="details">
                                <div class="desc">
                                     All Complains
                                </div>
                                <div class="number">
                                     <asp:Label ID="lblComplainStatus" runat="server" Text="Label"></asp:Label>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<!--
                        <div class="dashboard-stat green-haze green-stat">
                            <div class="visual">
                            </div>
                            <div class="details">
                                <div class="desc">
                                     New Leads
                                </div>
                                <div class="number">
                                     25
                                </div>
                            </div>
                            
                        </div>
-->
                    </div>
                </div>
            </div>
        
        <div class="container-fluid">
            
            <div class="row">
                
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <a href="#" class="labels-top-left"><img src="../../assets/global/img/phone-icon.png"> Helpline: 111-021-021</a>
                        <a href="#" class="labels-top-right text-right"><img src="../../assets/global/img/envelope-email-icon.png"> Email: support@multinet.com.pk</a>
                        <form id="Form2" class="login-form" action="get_new_connection.html">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                
                                    <div class="filter-box">
                                            <div class="controls form-group has-success has-feedback">

                                                <label>Search By Keyword</label>

                                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                                <span class="glyphicon glyphicon-search form-control-feedback"></span>

                                            </div>

                                            <span class="filter-label">Search By Filter</span>

                                            <div class="controls"> 
                                                <div class="form-group">

                                                          <div class="input-group">

                                                            <span class="input-group-btn">
                                                                <div class="selectdiv">

                                                                    <asp:DropDownList CssClass="form-control" name="city" id="city" runat="server">
                                                                        <asp:ListItem Enabled="False" Selected="True" Text="Open-Closed" Value="Open/Closed" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Open" Value="Open" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Closed" Value="Close" />
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

                                                                    <asp:DropDownList CssClass="form-control" name="Month" id="Month" runat="server" OnSelectedIndexChanged ="Month_SelectedIndexChanged" AutoPostBack ="true" >
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

                                                                        <asp:DropDownList CssClass="form-control" name="Year" id="Year" runat="server" OnSelectedIndexChanged ="Year_SelectedIndexChanged" AutoPostBack ="True">
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
                                            </div>
                                        </div>
                                    
                                </div>
                        
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <div class="filter-box-btn">

                                        <div class="controls">
        <!--
                                            <select class="form-control">
                                                <option selected disabled>Service Unit</option>
                                            </select>
        -->
                                        </div>

                                        <span class="btn-box">
                                            <div class="controls">
                                                <center>
                                                    <a href="get_new_connection.aspx">
                                                    <asp:Button CssClass="form-control btn green-haze border-radius margin-bottom" Text="New Complain" id="newComplain"  runat="server"></asp:Button>
                                                    </a>
                                                </center>
                                            </div>
                                        </span>

                                    </div>
                                </div>

                            </form>
                        
                        </div>
                    </div>
                </div>
        
    
        <div class="container-fluid">
        
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light">

                                <div class="portlet-body">
                                    
                                    <div class="tab-content scrollbar" id="style-1">
                                        <div class="col-md-6">
                                            <div class="tab-pane fade active in" id="tab_2_1" runat ="server">

                                               <%-- <div class="box-inside-tabs-inactive">

                                                    <p class="mobile">Circuit #: 34562-98<span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label53" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label54" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label55" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label1" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label2" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label3" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label4" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label5" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label6" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label7" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label8" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>

                                               <%-- <div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label9" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label10" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label11" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label12" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label13" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label14" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label15" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label16" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="tab-pane fade active in" id="tab_2_2" runat ="server">
                                                <%--<div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label17" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label18" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label19" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label20" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>
                                                
                                                <%--<div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label21" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label22" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label23" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label24" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label25" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label26" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label27" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label28" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>

                                                <%--<div class="box-inside-tabs-inactive">

                                                    <p class="mobile"><asp:Label ID="Label29" runat="server" Text="Circuit #: 34562-98"></asp:Label><span class="text-right complain-id">Complain ID: 34562-98</span></p>
                                                    <p class="branch"><asp:Label ID="Label30" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label31" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label32" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                    </div>

        </div>

</asp:Content>
