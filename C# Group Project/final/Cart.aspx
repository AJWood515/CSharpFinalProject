<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="final.Cart" ClientIDMode="Static" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceholder" runat="server">
    <script type="text/javascript">
        $(function () {
            $('[id*=grdCart]').footable()
        });
    </script>
</asp:Content>

<asp:Content ID="navContent" ContentPlaceHolderID="navPlaceHolder" runat="server">
    <li><a href="homepage.aspx">Home</a></li>
    <li><a href="UploadPage.aspx">Custom Design</a></li>
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceholder" runat="server">
    <div class="row"> 
        <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" GridLines="Horizontal" 
                DataKeyNames="index" OnRowCommand="grdCart_RowCommand" BackColor="LightGoldenrodYellow" BorderColor="Black" 
                BorderStyle="Solid" BorderWidth="1px" CellPadding="2" ForeColor="Black" CssClass="footable">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField SortExpression="imageUrl" ItemStyle-Width="100px">
                    <ItemTemplate>
                        <asp:Image CssClass="img-responsive visible-md visible-lg" ID="imgImage" runat="server" ImageUrl='<%# Eval("imageUrl") %>'></asp:Image>
                    </ItemTemplate>
                    <ItemStyle Width="230px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description" SortExpression="description" ItemStyle-Width="195px">
                    <ItemTemplate>
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="210px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Size" SortExpression="size" ItemStyle-Width="100px">
                    <ItemTemplate>
                        <asp:Label ID="lblSize" runat="server" Text='<%# Bind("size") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="70px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Item Price" SortExpression="price" ItemStyle-Width="100px">
                    <ItemTemplate>
                        <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("price","{0:$#,##0.00}") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="75px" HorizontalAlign="center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity" ControlStyle-Width="40px" HeaderStyle-Width="100px">
                    <ItemTemplate>
                        <asp:Label ID="lblQuantity" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="75px" HorizontalAlign="center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Item Total">
                    <ItemTemplate>
                        <asp:Label ID="lblTotal" runat="server" 
                            Text='<%# String.Format("{0:c}", ((Convert.ToInt32(Eval("quantity")))*(Convert.ToInt32(Eval("price")))))%>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="75px" HorizontalAlign="center"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                    <asp:LinkButton ID="lbtnRemove" Text="Remove" runat="server" CommandArgument='<%# Container.DataItemIndex %>' 
                        CommandName="Remove"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle HorizontalAlign="Justify" VerticalAlign="Middle" BackColor="Tan" Font-Bold="True" />
            <RowStyle HorizontalAlign="Justify" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" TypeName="CartItems" SelectMethod="GetItems" 
            DataObjectTypeName="ItemInfo">
        </asp:ObjectDataSource>
    </div>
    <div class="row">
        <asp:Button ID="backBtn" runat="server" Text="Continue Shopping" CssClass="btn btn-default" OnClick="backBtn_Click"/>
        <a tabindex="0" class="btn btn-warning" role="button" data-toggle="popover" data-trigger="focus" title="Check Out" 
            data-content="This button's functionality has not been added yet.">Check Out</a>
        <script>
            // Used for initializing the popover on the page.
            $(function () {
                $('[data-toggle="popover"]').popover()
            });
        </script>
    </div>    
</asp:Content>
