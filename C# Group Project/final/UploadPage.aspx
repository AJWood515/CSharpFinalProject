<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadPage.aspx.cs" Inherits="final.UploadPage" ClientIDMode="Static" %>

<asp:Content ID="navContent" ContentPlaceHolderID="navPlaceHolder" runat="server">
    <li><a href="homepage.aspx">Home</a></li>
    <li class="active"><a href="UploadPage.aspx">Custom Design</a></li>
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="list-group">
        <h2 class="list-group-item list-group-item-warning">To upload your own design:</h2> 
        <ul class="list-group-item list-unstyled">
            <li>Click the <strong>Browse</strong> button and select your design.</li> 
            <li>Then click the <strong>Upload</strong> button to upload the design.</li>
        </ul>
    </div>   
    
    <div class="row">
        <div class="form-group">
            <div class="col-sm-4">
                <asp:Image ID="Image1" runat="server" CssClass="img-responsive" />
            </div>
            <div class="col-sm-5">
                <div class="well">
                    <h4 class="text-left">Item Description:</h4>
                    <ul id="ulListID">
                        <li><asp:Label ID="itemDesc" runat="server" Text="Your Custom Design!"></asp:Label></li>
                        <li>100% Cotton t-shirt</li>
                        <li>High quality print</li>
                        <li>Made in U.S.A.</li>
                        <li>Machine wash cold inside-out</li>
                        <li>Tumble dry low</li>
                        <li>Satisfaction guaranteed</li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="panel">
                    <div class="row panel-body">
                        <label id="priceLabel">Price: $</label>
                        <asp:Label ID="amountLabel" runat="server" Text="20"></asp:Label>
                    </div>
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
                        <label id="quantityLabel">Quantity:&nbsp;</label>
                        <div class="btn-group">
                            <asp:DropDownList ID="ddlUpdate" runat="server">
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
    <div class="row divUploadRow">
        <div class="col-sm-6">
            <div class="panel">
                <div class="row panel-body">
                    <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="center-block" />
                </div>
                <div class="row panel-body">
                    <asp:Button ID="UploadButton" runat="server" Text="Upload" OnClick="UploadButton_Click"  />
                    <asp:Label runat="server" id="StatusLabel" text="Upload status: "></asp:Label>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="row">
                <asp:Button ID="addCartBtn" runat="server" Text="Add To Cart" CssClass="btn btn-primary" OnClick="addCartBtn_Click" Visible="False" />
                <asp:Button ID="backBtn" runat="server" Text="Continue Shopping" CssClass="btn btn-default" OnClick="backBtn_Click"/>
            </div>
        </div>
    </div>
</asp:Content>