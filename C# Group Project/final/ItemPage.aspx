<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItemPage.aspx.cs" Inherits="final.ItemPage" ClientIDMode="Static" %>

<asp:Content ID="navContent" ContentPlaceHolderID="navPlaceHolder" runat="server">
    <li><a href="homepage.aspx">Home</a></li>
    <li><a href="UploadPage.aspx">Custom Design</a></li>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="row">
        <div class ="form-group">
            <div class ="col-sm-4">
                <asp:Image runat="server" ID="shirtImg" AlternateText ="shirt" CssClass="img-responsive"/>
            </div>
            <div class ="col-sm-5">
                <div class="well">
                    <h4 class="text-left">Item Description:</h4>
                    <ul id="ulListID">
                        <li><asp:Label ID="itemDesc" runat="server"></asp:Label></li>
                        <li>100% Cotton t-shirt</li>
                        <li>High quality print</li>
                        <li>Made in U.S.A.</li>
                        <li>Machine wash cold inside-out</li>
                        <li>Tumble dry low</li>
                        <li>Satisfaction guaranteed</li>
                    </ul>
                </div>
            </div>
            <div class ="col-sm-3">
                <div id ="ItemData" class="panel">
                    <asp:label ID="itemName" runat="server"></asp:label>
                    <div class="row panel-body">
                        <label id="itemSize">Size:&nbsp;</label>
                        <div class ="btn-group">
                            <label for="shirtSize"></label>
                            <asp:DropDownList ID ="ddlShirtSize" runat="server">
                                <asp:ListItem Selected="True">Small</asp:ListItem>
                                <asp:ListItem>Medium</asp:ListItem>
                                <asp:ListItem>Large</asp:ListItem>
                                <asp:ListItem>X-Large</asp:ListItem>
                                <asp:ListItem>2X-large</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row panel-body">
                        <label id="itemQuant">Quantity:&nbsp;</label>
                        <div class ="btn-group">
                            <label for="shirtSize"></label>
                            <asp:DropDownList ID ="ddlQuant" runat="server">
                                <asp:ListItem Selected="True">1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div>
            <asp:Button ID="addCartBtn" runat="server" Text="Add To Cart" CssClass="btn btn-primary" OnClick="addCartBtn_Click"/>
            <asp:Button ID="backBtn" runat="server" Text="Continue Shopping" CssClass="btn btn-default" OnClick="backBtn_Click"/>
        </div>
    </div>
</asp:Content>
