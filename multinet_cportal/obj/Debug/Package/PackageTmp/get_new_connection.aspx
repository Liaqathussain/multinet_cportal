<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="get_new_connection.aspx.cs" Inherits="multinet_cportal.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link href="../../assets/global/css/get-new-connection.css" rel="stylesheet" type="text/css">

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
                                            <asp:Label ID="lblTotalCircuits" runat="server" Text="Label"></asp:Label>
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
                                         <asp:Label ID="lblDown" runat="server" Text="Label"></asp:Label>
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
                                         <asp:Label ID="lblOutstanding" runat="server" Text="Label"></asp:Label>
                                    </div>
                                </div>

                            </div>
                        </a>
                    </div>
                </div>
            </div>
        
        <div class="container">
        
            <div class="row">
                <center>
                    <h2 class="form-title">Get New Connection</h2>
                </center>
                <div class="col-md-8 col-md-offset-2 new_connection_form">
                    <div class="portlet light">

                                <!-- BEGIN LOGIN -->
                                <div class="content login">
                                    <!-- BEGIN LOGIN FORM -->
                                    <form id="Form2" class="login-form" action="get_new_connection.html">
                                        <div class="form-title"></div>
                                        <div class="alert alert-danger display-hide">
                                            <button class="close" data-close="alert"></button>
                                            <span>
                                            Enter any username and password. </span>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Circuit ID</label>
                                                <div class="input-icon">
                                                     <asp:DropDownList CssClass="form-control" name="month" id="CircuitID" AutoPostBack ="true"  runat="server" ></asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">POCName</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="POC Name" name="POC Name" id="POCName" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Infra</label>
                                                <div class="input-icon">
                                                    <asp:DropDownList CssClass="form-control" name="Infra" id="Infra" AutoPostBack ="true"  runat="server" ></asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Contact Phone</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Contact Phone" name="contact" id="ContactPhone" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">City</label>
                                                <div class="input-icon">
                                                    <asp:DropDownList CssClass="form-control" name="City" id="cmbCity" AutoPostBack ="true"  runat="server" ></asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Contact Email</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Contact Email" name="Email" id="Email" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">ServiceUnit</label>
                                                <div class="input-icon">
                                                    <asp:DropDownList CssClass="form-control" name="ServiceUnit" id="cmbServiceUnit" AutoPostBack ="true"  runat="server" ></asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Contact Email</label>
                                                <div class="input-icon">
                                                   <%-- <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Contact Email" name="Email" id="TextBox1" runat="server"></asp:TextBox>--%>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Address</label>
                                                <div class="input-icon">
                                                    <asp:TextBox TextMode="MultiLine" Rows="5" CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Address" name="Address" id="txtAddress" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Description</label>
                                                <div class="input-icon">
                                                    <asp:TextBox TextMode="MultiLine" Rows="5" CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Description" name="description" id="Description" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-actions">
                                                
                                                 <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
                                                <label class="checkbox">
                                                </label>
                                                <asp:Button ID="btnSubmit" CssClass="btn green-haze pull-right" Text="Submit" 
                                                    runat="server" onclick="btnSubmit_Click" ></asp:Button>
                                            </div>
                                        </div>

                                    </form>
                                    <!-- END LOGIN FORM -->


                                </div>
                                <!-- END LOGIN -->
                                
                            </div>
                        </div>
                
                    </div>

        </div>
</asp:Content>
