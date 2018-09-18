<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="final.CreateAccount" ClientIDMode="Static" %>

<asp:Content ID="navContent" ContentPlaceHolderID="navPlaceHolder" runat="server">
    <li><a href="homepage.aspx">Home</a></li>
    <li><a href="UploadPage.aspx">Custom Design</a></li>
</asp:Content>

<asp:Content ID="LoginContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="well">
        <h3>Create New Account</h3>
        <h4>Please enter a username and password to make an account.</h4>
        <div class="row">
            <div class="col-xs-12 col-md-8 col-md-offset-2">
                <div class="form-group">
                    <asp:TextBox ID="usernametextbox" runat="server" placeholder="Username"  
                        CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" 
                        ControlToValidate="usernametextbox" ErrorMessage="Please enter a username"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="passwordtextbox" runat="server" placeholder="Password"
                         CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" 
                        ControlToValidate="passwordtextbox" ErrorMessage="Please enter a password"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:Label ID="infolabel" runat="server"></asp:Label>
                </div>

                <div>
                    <asp:Button CssClass="btn btn-primary" ID="CreateAccountbutton" runat="server" Text="Create Account" 
                        OnClick="CreateAccountbutton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
