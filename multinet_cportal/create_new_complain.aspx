<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="create_new_complain.aspx.cs" Inherits="multinet_cportal.WebForm10" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../../assets/global/css/create-new-complain.css" rel="stylesheet" type="text/css">
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
                                     Total Circuits
                                </div>
                                <div class="number">
                                     1932
                                </div>
                            </div>
                            
                        </div>
-->
                        <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
                        </telerik:RadScriptManager>
                        
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat blue-madison blue-stat">
                            <div class="visual">
                            </div>
                            <div class="details">
                                <div class="desc">
                                     Complain Status
                                </div>
                                <div class="number">
                                     200
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="dashboard-stat orange orange-stat">
                                <div class="visual">
                                </div>
                                <div class="details">
                                    <div class="desc">
                                         All Complains
                                    </div>
                                    <div class="number">
                                         45
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
                                     Outstanding
                                </div>
                                <div class="number">
                                     933k
                                </div>
                            </div>
                            
                        </div>
-->
                    </div>
                </div>
            </div>
        
        <div class="container">
        
            <div class="row">
                <center>
                    <h2 class="form-title">New Complain</h2>
                </center>
                <div class="col-md-8 col-md-offset-2 new_connection_form">
                    <div class="portlet light">

                                <!-- BEGIN LOGIN -->
                                <div class="content login">
                                    <!-- BEGIN LOGIN FORM -->
                                    <form id="Form2" class="login-form" action="index.html" >
                                        <div class="form-title">
                                        </div>
                                        <div class="alert alert-danger display-hide">
                                            <button class="close" data-close="alert"></button>
                                            <span>
                                            Enter any circuit id and statement. </span>
                                        </div>
                                        

                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Circuit ID</label>
                                                <div class="input-icon">
                                                    
                                                <asp:DropDownList CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Select Initial Statement"  ID="DropDownList1" runat="server" Height="35px" Width="310px">
                                                </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Select Initial Statement</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Select Initial Statement" name="password" id="TextBox2" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        

                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Circuit ID</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Select Circuit ID" name="circuit_id" id="circuit_id" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Select Initial Statement</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Select Initial Statement" name="password" id="password" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">POC Name</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="POC Name" name="poc" id="POCName" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Contact Number</label>
                                                <div class="input-icon">
                                                    <asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Contact Number" name="contact" id="POCContactNo" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <div class="form-group margin-bottom-logo">
                                                <label class="control-label visible-ie8 visible-ie9">Comments</label>
                                                <div class="input-icon">
                                                    <asp:TextBox TextMode="MultiLine" Rows="5" CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Comments" name="comments" id="Comments" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-actions">
                                                <asp:Label class="checkbox" ID="lblStatus" runat="server" Text="Label"></asp:Label>
                                                <label class="checkbox">
                                                </label>
                                                <asp:Button ID="btnSubmit" CssClass="btn green-haze pull-right" Text="Submit" 
                                                    runat="server" onclick="btnSubmit_Click"></asp:Button>
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
