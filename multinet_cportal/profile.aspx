<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="multinet_cportal.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <link href="../../assets/global/css/profile.css" rel="stylesheet" type="text/css">
<div class="container-fluid">
        <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 header-box">
                    
                    <h1 class="main-title"><asp:Label ID="CustomerNameTop" runat="server" Text=""></asp:Label></h1>
                    <h3 class="main-address"><asp:Label ID="lblCityTop" runat="server" Text=""></asp:Label></h3>

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
                                    
                                    <div class="tab-content">
                                        
                                        <div class="col-md-12">
                                            <div class="tab-pane fade active in" id="tab_2_1">
                                                
                                                <div class="row">
                                                    <h3 class="title general">General Information</h3>

                                                    <div class="col-md-3 no-left-margin">
                                                        <span class="sub-title">CUSTOMER NAME</span>
                                                        <asp:Label CssClass="title-data" ID="CustomerName" runat="server"></asp:Label><br />
                                                        <asp:Label CssClass="title-data" ID="lblCustName" runat="server" Text=""></asp:Label>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">CITY</span>
                                                        <asp:Label CssClass="title-data" ID="lblCity" runat="server"></asp:Label>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">STATE</span>
                                                        <asp:Label CssClass="title-data" ID="lblState" runat="server"></asp:Label>
                                                    </div>
                                                    
                                                    <div class="col-md-3">
                                                        <span class="sub-title">COUNTRY</span>
                                                        <asp:Label CssClass="title-data" ID="lblCuntry" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                                
                                                <div class="row">
                                                
                                                    <h3 class="title ip">Account Information</h3>

                                                    <div class="col-md-3 no-left-margin">
                                                        <span class="sub-title">SLA</span>
                                                        <asp:Label CssClass="title-data" ID="lblSLA" runat="server"></asp:Label>

                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">ACTIVE CIRCUITS</span>
                                                        <asp:Label CssClass="title-data" ID="lblTotalCircuit" runat="server"></asp:Label>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">CIRCUITS DOWN</span>
                                                        <asp:Label CssClass="title-data" ID="lblNMSDownCount" runat="server"></asp:Label>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">OUTSTANDING</span>
                                                        <asp:Label CssClass="title-data" ID="lblOutstanding" runat="server"></asp:Label>
                                                    </div>

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
