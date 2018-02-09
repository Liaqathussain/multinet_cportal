<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="support_all_complain_details.aspx.cs" Inherits="multinet_cportal.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link href="../../assets/global/css/support-all-complain-details.css" rel="stylesheet" type="text/css">
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
                                     200
                                </div>
                            </div>
                            
                        </div>
                    </div>--%>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat blue-madison blue-stat">
                            <div class="visual">
                            </div>
                            <div class="details">
                                <div class="desc">
                                     All Complains
                                </div>
                                <div class="number">    
                                    <asp:Label ID="lblAllComplaint" runat="server" Text="Label"></asp:Label>
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
                <div class="col-md-12">
                    <div class="portlet light">

                                <div class="portlet-body">
                                    
                                    <div class="tab-content">
                                        <div class="col-md-12">
                                            <div class="tab-pane fade active in" id="tab_2_1">

                                                <div class="box-inside-tabs-inactive">

                                                    <p class="complain"><asp:Label ID="lblCircuit" runat="server" Text=""></asp:Label><span class="text-right complain-id">Complain ID:<asp:Label ID="lblComplaintID" runat="server" Text="Label"></asp:Label></span></p>
                                                    <p class="branch"><asp:Label ID="lblBranchName" runat="server" Text=""></asp:Label><span class="text-right sla">SLA:<asp:Label ID="lblSLA" runat="server" Text="Label"></asp:Label></span></p>
                                                    <span class="text-right status-sla">Status: <span class="red"><asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label></span></span>
                                                    <p class="address"><asp:Label ID="lblAddress" runat="server" Text=""></asp:Label></p>
                                                    
                                                </div>

                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                
                    </div>

        </div>
        
        <div class="container-fluid">
        
            <div class="row">

                        <div class="col-md-9">
                            
                            <div class="timeline-centered">
    
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner" id="Tree" runat ="server">
                                        <div class="timeline-icon bg-success">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">
                                            <h2><a href="#"><span class="date">FEB 03</span>Signup</a> <span>11:15 PM</span></h2>
                                            <p>Order Received</p>
                                        </div>
                                    </div>

                                </article>
                  
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-progress">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Deployed</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>
                                
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-progress">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Tested</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>
                                
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-progress">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Acknowledged</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>
                                
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-progress">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Active</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>
                                
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-progress">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Active</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>
                                
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-progress   ">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Deployed</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>
                                
                                <article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-success">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Email Sent</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>
    
                            </div>
                
                        </div>
                
                    </div>

        </div>
</asp:Content>
