<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="lead_status.aspx.cs" Inherits="multinet_cportal.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link href="../../assets/global/css/lead-status.css" rel="stylesheet" type="text/css">
<div class="page-content">
        
        <div class="container">
            <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a href="5_circuit.html">
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
                        <a href="16_circuit-down.html">
                            <div class="dashboard-stat red-intense red-stat">
                                <div class="visual">
                                </div>
                                <div class="details">
                                    <div class="desc">
                                         Down
                                    </div>
                                    <div class="number">
                                          <asp:Label ID="lblDownCircuits" runat="server" Text="Label"></asp:Label>
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
                        <a href="17_billing-all-statements-outstanding.html">
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
        
        <div class="container-fluid">
        
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light">
<!--
                        <div class="portlet-body">
                            <ul class="nav nav-pills">

                                <div class="pull-right">
                                    <button type="submit" class="btn green-haze border-radius margin-bottom">
                                    Create New Lead
                                    </button>
                                </div>

                            </ul>
                        </div>
-->
                    </div>
                </div>
            </div>
            
        </div>
        
        <div class="container-fluid">
        
            <div class="row">
                <div class="col-md-3 col-md-offset-3">
                    <div class="portlet light">
                        <form id="Form2" class="login-form" action="get_new_connection.html" >
                                <div class="portlet-body">
                                    <ul class="nav nav-pills">
                                        
                                        <div class="col-md-10">
                                            <div class="controls form-group has-success has-feedback">

                                                <label>Search By Request Number</label>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="" runat ="server" 
                                                    runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>

                                                <span class="glyphicon glyphicon-search form-control-feedback"></span>

                                            </div>
                                        </div>
                                        <div class="col-md-10">
                                        
                                            <div class="controls form-group has-success has-feedback">
                                                <label>Filter</label>
                                                
                                                <div class="form-group">

                                                  <div class="input-group">

                                                    <span class="input-group-btn">
                                                        <div class="selectdiv">

                                                                  <asp:DropDownList CssClass="form-control" name="id" id="Month" OnSelectedIndexChanged ="Month_SelectedIndexChanged" AutoPostBack ="true"  runat="server">
                                                                        <asp:ListItem Enabled="False" Selected="True" Text="Month" Value="Month" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Jan" Value="1" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Feb" Value="2" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Mar" Value="3" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Apr" Value="4" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="May" Value="5" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Jun" Value="6" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Jul" Value="7" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Aug" Value="8" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Sep" Value="9" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Oct" Value="10" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Nov" Value="11" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Dec" Value="12" />
                                                                  </asp:DropDownList> 
                                                                
                                                        </div>
                                                    </span>

                                                    <span class="input-group-btn">
                                                    <div class="selectdiv">

                                                              <asp:DropDownList CssClass="form-control" name="nr" id="Years" OnSelectedIndexChanged ="Years_SelectedIndexChanged" AutoPostBack="true" runat="server">
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
                                                              </asp:DropDownList> 
  
                                                        </div>
                                                    </span>

                                                  </div>    
                                                </div>  
                                                
                                            </div>
                                        
                                        </div>
                                        
                                    </ul>
                                    
                                    <div class="tab-content scrollbar" >
                                        <div class="tab-pane fade active in" id="tab_2_1" runat ="server">
                                           <%-- <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="mobile active">Connection Request # 001337-432</p>
                                                <p class="address  active">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="mobile">Connection Request # 001</p>
                                                <p class="address">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="mobile">Connection Request # 001</p>
                                                <p class="address">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="mobile">Connection Request # 001</p>
                                                <p class="address">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="mobile">Connection Request # 001</p>
                                                <p class="address">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="mobile">Connection Request # 001</p>
                                                <p class="address">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="mobile">Connection Request # 001</p>
                                                <p class="address">Thursday, 15th January 2017</p>
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </form>
                          </div>
                        </div>
                
                        <div class="col-md-6 scrollbar-timeline" >
                            
                            <div class="timeline-centered" id="Tab_2_2" runat ="server">
    
                                <%--<article class="timeline-entry">

                                    <div class="timeline-entry-inner">
                <!--                        <time class="timeline-time" datetime="2014-01-10T03:45"><span>03:45 AM</span> <span>Today</span></time>-->

                                        <div class="timeline-icon bg-success">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">
                                            <h2><a href="#"><span class="date">FEB 03</span>Signup</a> <span>11:15 PM</span></h2>
                                            <p>Order Received</p>
                                        </div>
                                    </div>

                                </article>--%>
                  
                                <%--<article class="timeline-entry">

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

                                        <div class="timeline-icon bg-success">
                                            <i class="entypo-feather"></i>
                                        </div>

                                        <div class="timeline-label">

                                            <h2><a href="#"><span class="date">FEB 03</span>Email Sent</a> <span>11:15 PM</span></h2>
                                            <p>In Progress</p>
                                        </div>

                                    </div>

                                </article>--%>
    
                            </div>
                
                        </div>
                
                    </div>

        </div>
        
</asp:Content>
