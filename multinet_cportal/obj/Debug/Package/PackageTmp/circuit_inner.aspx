<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="circuit_inner.aspx.cs" Inherits="multinet_cportal.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../../assets/global/css/circuit-inner.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
    function initMap() {
        var uluru = { lat: -25.363, lng: 131.044 };
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 4,
            center: uluru
        });
        var marker = new google.maps.Marker({
            position: uluru,
            map: map
        });
    }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBywsCOfcv26ZeFJrLNq5ue2h4ou7OdSI0&callback=initMap">
</script>

<div class="container-fluid">
        <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 header-box">
                    
                    <h1 class="main-title">
                    Circuit Number: <asp:Label ID="GPID" runat="server" Text="Label"></asp:Label> <span class="favorites pull-right"><i class="fa fa-star"></i> Add To Favorites</span></h1>
                    <h3 class="main-address"><asp:Label ID="lblCity" runat="server" Text="Label"></asp:Label></h3>
                    <p class="main-serive-status"><asp:Label ID="lblSLA" runat="server" Text="Label"></asp:Label><span class="main-serive-status-active">Status: <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label></span></p>

                </div>

               <%-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 map-box" id="map">



                </div>--%>
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
                                                
                                                <a href="create_new_complain.aspx" class="btn green-haze pull-right">
                                                Support
                                                </a>
                                                
                                                <a href="billing_all_statements_inner.aspx" class="btn green-haze pull-right">
                                                Invoice
                                                </a>
                  
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="tab-pane fade active in" id="tab_2_1">
                                                
                                                <div class="row">
                                                    <h3 class="title general">General Information</h3>

                                                    <div class="col-md-3 no-left-margin">
                                                        <span class="sub-title">GPID</span>
                                                        <span class="title-data"><asp:Label ID="lblGIGPID" runat="server" Text="Label"></asp:Label></span>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">BANDWIDTH</span>
                                                        <span class="title-data"><asp:Label ID="lblBandwidth" runat="server" Text="Label"></asp:Label></span>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">CIRCUIT NAME</span>
                                                        <span class="title-data"><asp:Label ID="lblCircuitName" runat="server" Text="Label"></asp:Label></span>
                                                    </div>
                                                </div>
                                                
                                                <div class="row">
                                                
                                                    <h3 class="title ip">IP Addresses</h3>

                                                    <div class="col-md-3 no-left-margin">
                                                        <span class="sub-title">PRIMARY IP ADDRESS</span>
                                                        <span class="title-data"><asp:Label ID="lblPrimaryIPAddress" runat="server" Text="Label"></asp:Label></span>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">PRIMARY IP RANGE</span>
                                                        <span class="title-data"><asp:Label ID="lblPrimaryIPRange" runat="server" Text="Label"></asp:Label></span>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <span class="sub-title">PRIMARY IP GATEWAY</span>
                                                        <span class="title-data"><asp:Label ID="lblPrimaryIPGatway" runat="server" Text="Label"></asp:Label></span>
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
