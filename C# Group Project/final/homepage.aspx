<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="final._homepage" ClientIDMode="Static" %>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <h2>
        Welcome to T-shirt Express!
    </h2>
           
    <h3>
        Here at T-shirt Express you are able to order one of our custom t-shirts, <br />
        or you can <a href="UploadPage.aspx">customize and upload</a> one of your own designs!
    </h3>
    <hr />
    <h3>Click a design below, or the Custom Design link above, to get started!</h3>

    <asp:SqlDataSource ID ="SqlDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:GroupProjectsConnectionString1 %>' 
        SelectCommand="SELECT [Id], [Name], [Description], [Price] FROM [Products]"></asp:SqlDataSource>

    <div class="row hpRow">
        <div class="col-sm-4"><asp:ImageButton ID="ibtnCat" runat="server" ImageUrl="~/Images/cartoon-cat-min.jpg" AlternateText="Cartoon Cat" 
            CssClass="img-responsive" OnClick="ibtnCat_Click" /></div>
        <div class="col-sm-4"><asp:ImageButton ID="ibtnDinosaurs" runat="server" ImageUrl="~/Images/dinosaurs-min.jpg" AlternateText="Dinosaurs" 
            CssClass="img-responsive" OnClick="ibtnDinosaurs_Click" /></div>
        <div class="col-sm-4"><asp:ImageButton ID="ibtnDragon" runat="server" ImageUrl="~/Images/dragon-min.jpg" AlternateText="Dragon" 
            CssClass="img-responsive" OnClick="ibtnDragon_Click" /></div>
    </div>
    <div class="row hpRow">
        <div class="col-sm-4"><asp:ImageButton ID="ibtnPineapple" runat="server" ImageUrl="~/Images/pineapple.min.jpg" AlternateText="Pineapple" 
            CssClass="img-responsive" OnClick="ibtnPineapple_Click" /></div>
        <div class="col-sm-4"><asp:ImageButton ID="ibtnViolin" runat="server" ImageUrl="~/Images/violin.min.jpg" AlternateText="Violin" 
            CssClass="img-responsive" OnClick="ibtnViolin_Click" /></div>
        <div class="col-sm-4"><asp:ImageButton ID="ibtnMammoth" runat="server" ImageUrl="~/Images/mammoth-min.jpg" AlternateText="Mammoth" 
            CssClass="img-responsive" OnClick="ibtnMammoth_Click" /></div>
    </div>  
</asp:Content>