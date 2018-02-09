<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="support_complain_status.aspx.cs" Inherits="multinet_cportal.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="assets/global/css/support-complain-status.css" rel="stylesheet" type="text/css">
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
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
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
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="dashboard-stat blue-madison blue-stat">
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
                        <form id="Form2" class="login-form" action="get_new_connection.html" >
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
                                                                        <asp:ListItem Enabled="False" Selected="True" Text="Open/Closed" Value="Open/Closed" />
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

                                                                    <asp:DropDownList CssClass="form-control" name="month" id="month" runat="server">
                                                                        <asp:ListItem Enabled="False" Selected="True" Text="Month" Value="Month" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="Janauary" Value="Janauary" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="February" Value="February" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="March" Value="March" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="April" Value="April" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="May" Value="May" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="June" Value="June" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="July" Value="July" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="August" Value="August" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="September" Value="September" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="October" Value="October" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="November" Value="November" />
                                                                        <asp:ListItem Enabled="True" Selected="False" Text="December" Value="December" />
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

                                                                        <asp:DropDownList CssClass="form-control" name="year" id="year" runat="server">
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
                                                    <asp:Button CssClass="form-control btn green-haze border-radius margin-bottom" Text="New Complain" id="newComplain" runat="server"></asp:Button>
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
                <div class="col-md-3 col-md-offset-3">
                    <div class="portlet light">

                                <div class="portlet-body">
                                    
                                    
                                    <div class="tab-content scrollbar" id="style-1">
                                        <div class="tab-pane fade active in" id="tab_2_1">
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="complain active">Complain # 001</p>
                                                <p class="circuit active">Circuit # : 43526-876</p>
                                                <p class="address active">MCB (Ravi Road Branch)</p>
                                                <p class="address active">Suit 202, 2nd Floor, Abacus Building, DHA, Phase 3, Karachi</p>
                                                <p class="address  active">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="complain">Complain # 001</p>
                                                <p class="circuit">Circuit # : 43526-876</p>
                                                <p class="address">MCB (Ravi Road Branch)</p>
                                                <p class="address">Suit 202, 2nd Floor, Abacus Building, DHA, Phase 3, Karachi</p>
                                                <p class="address ">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="complain">Complain # 001</p>
                                                <p class="circuit">Circuit # : 43526-876</p>
                                                <p class="address">MCB (Ravi Road Branch)</p>
                                                <p class="address">Suit 202, 2nd Floor, Abacus Building, DHA, Phase 3, Karachi</p>
                                                <p class="address ">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="complain">Complain # 001</p>
                                                <p class="circuit">Circuit # : 43526-876</p>
                                                <p class="address">MCB (Ravi Road Branch)</p>
                                                <p class="address">Suit 202, 2nd Floor, Abacus Building, DHA, Phase 3, Karachi</p>
                                                <p class="address ">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="complain">Complain # 001</p>
                                                <p class="circuit">Circuit # : 43526-876</p>
                                                <p class="address">MCB (Ravi Road Branch)</p>
                                                <p class="address">Suit 202, 2nd Floor, Abacus Building, DHA, Phase 3, Karachi</p>
                                                <p class="address ">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="complain">Complain # 001</p>
                                                <p class="circuit">Circuit # : 43526-876</p>
                                                <p class="address">MCB (Ravi Road Branch)</p>
                                                <p class="address">Suit 202, 2nd Floor, Abacus Building, DHA, Phase 3, Karachi</p>
                                                <p class="address ">Thursday, 15th January 2017</p>
                                            </div>
                                            
                                            <div class="box-inside-tabs">
                                                <p class="star">
                                                </p>
                                                <p class="complain">Complain # 001</p>
                                                <p class="circuit">Circuit # : 43526-876</p>
                                                <p class="address">MCB (Ravi Road Branch)</p>
                                                <p class="address">Suit 202, 2nd Floor, Abacus Building, DHA, Phase 3, Karachi</p>
                                                <p class="address ">Thursday, 15th January 2017</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                        <div class="col-md-6 scrollbar-timeline" id="style-1">
                            
                            <div class="timeline-centered">
    
                                <article class="timeline-entry">

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
