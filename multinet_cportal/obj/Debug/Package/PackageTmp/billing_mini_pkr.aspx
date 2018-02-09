<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="billing_mini_pkr.aspx.cs" Inherits="multinet_cportal.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../../assets/global/css/billing-mini-pkr.css" rel="stylesheet" type="text/css">
<div class="container-fluid">
            <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 header-box">
                          
                        <div class="col-md-12">
                            <div class="tab-pane fade active in" id="tab_2_1">

                                <h3 class="main-address">Billing</h3>
                                <h1 class="main-title">MUSLIM COMMERCIAL BANK</h1>
                                
                                <a href="9_billing-all-statements-inner.html" class="tab-buttons btn green-haze pull-right header-btns">
                                All Statements
                                </a>
                                
                                <a href="7_billing-mini-pkr.html" class="active-tab btn tab-buttons green-haze pull-right header-btns">
                                Mini Statement
                                </a>

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
                                    
                                    <div class="col-md-12">
                                        <div class="tab-pane fade active in" id="Div1">

                                            <a href="#" class="labels-top pull-right"><img src="../../assets/global/img/pdf-icon.png" class="icons">Download</a>
                                            
                                            <a href="#" class="labels-top pull-right"><img src="../../assets/global/img/support-icon.png" class="icons"> Support</a>
                                            
                                            <a href="#" class="labels-top pull-right" onclick="printThis();"><img src="../../assets/global/img/print-icon.png" class="icons"> Print</a>

                                        </div>
                                    </div>
                                    
                                    <div class="row border-bottom">
                                        
                                        <div class="col-md-6">
                                            <h1 class="heading-bold main">INVOICE</h1>
                                        </div>
                                    
                                        <div class="col-md-6 text-right right-section">
                                                <h3 class="heading-bold">Receipt Number: 235417-87</h3>
                                                <p class="date">Due Date: 15th January, 2017</p>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="row">
                                    
                                        <div class="col-md-6 border-between">
                                            <h3 class="heading-bold sub-main">Client Information</h3>
                                            <p class="address">Muslim Commercial Bank</p>
                                            <p class="address">Suit 202 2nd Floor Abacus Building DHA,</p>
                                            <p class="address">Phase-3, Karachi, Pakistan</p>
                                        </div>
                                    
                                        <div class="col-md-6 text-right right-section">
                                            <h3 class="heading-bold sub-main">Circuit Information</h3>
                                            <p class="circuit-number-title">Circuit Number: <span class="circuit-number">001337-432</span></p>
                                            <p class="status">Status: <span class="status-label-active">Active</span></p>
                                        </div>
                                    
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                
                    </div>
            </div>  
            
            <div class="container-fluid margin-both-sides services-section">
                <div class="row">

                    <div class="col-md-12 text-right">
                        <span class="currency">Change Currency</span>
                        <label class="checkbox-inline">
                           <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                        </label>

                    </div>

                    <div class="col-md-12">
                        <table class="table table-responsive">
                        <thead>

                            <tr>
                                <th style="width: 100px;"><h3 class="thead-title" >SERVICES</h3></th>
                                <th></th>
                                <th><h3 class="thead-title">USD</h3></th>
                                <th><h3 class="thead-title">PKR</h3></th>
                            </tr>

                        </thead>
                        <tbody>

                            <tr>
                                <th class="thead-services">
                                    Dark Core
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td>
                                <td>-</td>
                                <td class="thead-amount">800 PKR</td>
                            </tr>
                            <tr>
                                <th class="thead-services">
                                    FLL
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td>
                                <td>-</td>
                                <td class="thead-amount">800 PKR</td>
                            </tr>
                            <tr>
                                <th class="thead-services">
                                    Data
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td> 
                                <td>-</td>
                                <td class="thead-amount">800 PKR</td>
                            </tr>
                            <tr>
                                <th class="thead-services">
                                    Internet
                                </th>
                                <td>
                                    <label class="checkbox-inline">
                                       <input type="checkbox" checked data-toggle="toggle" id="toggle-one"> 
                                    </label>
                                </td>
                                <td>-</td>
                                <td class="thead-amount">800 PKR</td>
                            </tr>

                        </tbody>
                        </table>

                    </div>

                </div>
            </div>
            
            <div class="container-fluid margin-both-sides-total services-section-total" style="background-color: #414042">
                <div class="row">

                    <div class="col-md-12">
                        <table class="table table-responsive">
                            <thead>

                                <tr class="border-top">
                                    <th><h3 class="thead-title-sub-total">Sub Total</h3></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th><h3 class="final-amount">15,000 PKR</h3></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>

                            </thead>
                        </table>

                    </div>

                </div>
            </div>

        </div>

</asp:Content>
