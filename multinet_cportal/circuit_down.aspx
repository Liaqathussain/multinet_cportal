﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="circuit_down.aspx.cs" Inherits="multinet_cportal.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link href="../../assets/global/css/circuit-down.css" rel="stylesheet" type="text/css">
<div class="page-content">
        
        <div class="container-fluid">
            <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <form id="Form2" class="login-form" action="get_new_connection.html" >
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

                                                            <asp:DropDownList CssClass="form-control" name="city" id="RadCity" OnSelectedIndexChanged="RadCity_SelectedIndexChanged" AutoPostBack ="true" runat="server">
                                                                    <%--<asp:ListItem Enabled="False" Selected="True" Text="City" Value="City" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Karachi" Value="Karachi" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Lahore" Value="Lahore" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Islamabad" Value="Islamabad" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Quetta" Value="Quetta" /> --%>
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

                                                            <asp:DropDownList CssClass="form-control" name="infra" id="RadInfra" OnSelectedIndexChanged="RadInfra_SelectedIndexChanged" AutoPostBack ="true" runat="server">
                                                                   <%-- <asp:ListItem Enabled="False" Selected="True" Text="Infra" Value="Infra" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 1" Value="Option 1" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 2" Value="Option 2" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 3" Value="Option 3" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 4" Value="Option 4" /> --%>
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

                                                                <asp:DropDownList CssClass="form-control" name="bandwidth" id="RadBandwidth" OnSelectedIndexChanged="RadBandwidth_SelectedIndexChanged" AutoPostBack ="true"  runat="server">
                                                                    <%--<asp:ListItem Enabled="False" Selected="True" Text="Bandwidth" Value="Bandwidth" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 1" Value="Option 1" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 2" Value="Option 2" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 3" Value="Option 3" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 4" Value="Option 4" /> --%>
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

                                                            <asp:DropDownList CssClass="form-control" name="service_unit" id="RadServiceUnit" OnSelectedIndexChanged="RadServiceUnit_SelectedIndexChanged" AutoPostBack ="true" runat="server">
                                                                    <%--<asp:ListItem Enabled="False" Selected="True" Text="Service Unit" Value="Service Unit" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 1" Value="Option 1" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 2" Value="Option 2" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 3" Value="Option 3" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 4" Value="Option 4" /> --%>
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

                                                            <asp:DropDownList CssClass="form-control" name="region" id="RadRegion" OnSelectedIndexChanged="RadRegion_SelectedIndexChanged" AutoPostBack ="true" runat="server">
                                                                    <%--<asp:ListItem Enabled="False" Selected="True" Text="Region" Value="Region" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 1" Value="Option 1" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 2" Value="Option 2" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 3" Value="Option 3" />
                                                                    <asp:ListItem Enabled="True" Selected="False" Text="Option 4" Value="Option 4" /> --%>
                                                            </asp:DropDownList>

                                                        </div>
                                                    </span>
                                            </div>
                                        </div>
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
                                            <div class="tab-pane fade active in" id="Tab_1" runat="server">

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label1" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label2" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label3" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label4" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label5" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label6" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label7" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label8" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label9" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label10" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label11" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label12" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label13" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label14" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label15" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label16" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label17" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label18" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label19" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label20" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label21" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label22" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label23" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label24" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-md-6">
                                            <div class="tab-pane fade active in" id="Tab_2" runat ="server">
                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label25" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label26" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label27" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label28" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label29" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label30" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label31" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label32" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label33" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label34" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label35" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label36" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="pull-right">
                                                        <img class="star" src="../../assets/global/img/empty-star.png">
                                                    </p>
                                                    <p class="mobile"><asp:Label ID="Label37" runat="server" Text="001337-505"></asp:Label></p>
                                                    <p class="branch"><asp:Label ID="Label38" runat="server" Text="MCB (Ravi Road Branch)"></asp:Label></p>
                                                    <p class="address"><asp:Label ID="Label39" runat="server" Text="Suit 202 2nd Floor Abacus Building DHA, Phase-3, Karachi, Pakistan"></asp:Label></p>
                                                    <p class="status">Status: <asp:Label ID="Label40" class="status-label-inactive" runat="server" Text="In Active"></asp:Label></p>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                    </div>

        </div>
</asp:Content>
