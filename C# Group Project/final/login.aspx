<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="final.login" ClientIDMode="Static" %>

<asp:Content ID="navContent" ContentPlaceHolderID="navPlaceHolder" runat="server">
    <li><a href="homepage.aspx">Home</a></li>
    <li><a href="UploadPage.aspx">Custom Design</a></li>
</asp:Content>

<asp:Content ID="LoginContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="well">
        <h3>User Login</h3>
        <div class="row">
            <div class="col-xs-12 col-md-8 col-md-offset-2">
                <div class="form-group">
                    <asp:TextBox ID="usernametextbox" runat="server" CssClass="form-control" 
                        placeholder="Username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" 
                        ControlToValidate="usernametextbox" ErrorMessage="Please enter a username"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="passwordtextbox" runat="server" CssClass="form-control" 
                        TextMode="Password" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" 
                        ControlToValidate="passwordtextbox" ErrorMessage="Please enter a password"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:Label ID="infolabel" runat="server" ForeColor="Red"></asp:Label>    
                </div>
            </div>
        </div>
        <asp:Button CssClass="btn btn-primary" ID="Loginbutton" runat="server" Text="Login" 
            OnClick="Loginbutton_Click" />
        <asp:Button CssClass="btn btn-info" ID="CreateAccount" runat="server" Text="Create Account" 
            OnClick="CreateAccount_Click" CausesValidation="False" />
    </div>
</asp:Content>
