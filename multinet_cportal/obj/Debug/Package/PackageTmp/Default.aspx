<%@ Page Title="" Language="C#" MasterPageFile="~/Form.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="multinet_cportal.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!-- BEGIN LOGO -->
<div class="logo">
	<a href="index.html">
<!--	<img src="../../assets/admin/layout3/img/logo-big.png" alt=""/>-->
	</a>
</div>
<!-- END LOGO -->
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGIN -->
<div class="content">
	<!-- BEGIN LOGIN FORM -->
	<form class="login-form" action="home.html" method="post">
        <center>
            <img class="img-responsive margin-bottom-logo" src="../../assets/global/img/multinet_logo.png">
        </center>
        <div class="form-title"></div>
		<div class="alert alert-danger display-hide">
			<button class="close" data-close="alert"></button>
			<span>
			Enter any username and password. </span>
		</div>
        <div class="input-icon">
				<asp:Label ForeColor ="Red"  Visible="true" id="lblStatus" runat="server"></asp:Label>
			</div>
		<div class="form-group margin-bottom-logo">
			<label class="control-label visible-ie8 visible-ie9">Username</label>
			<div class="input-icon">
				<asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Username" name="username" id="txtLogin" runat="server"></asp:TextBox>
			</div>
		</div>
		<div class="form-group margin-bottom-logo">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			<div class="input-icon">
				<asp:TextBox CssClass="form-control placeholder-no-fix" autocomplete="off" placeholder="Password" name="password" id="txtPassword" runat="server"></asp:TextBox>
			</div>
		</div>

        <div class="form-group margin-bottom-logo">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			
		</div>

		<div class="form-actions">
			<label class="checkbox">
            </label>
			<a href="home.html">
                <asp:Button CssClass="btn green-haze pull-right" Text="Sign In" OnClick ="btnLogin_Click" 
                id="btnLogin" runat="server"></asp:Button>
            </a>
		</div>
        
	</form>
	<!-- END LOGIN FORM -->
	
	
</div>
<!-- END LOGIN -->
</asp:Content>
