<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="qlPhanHoi.aspx.cs" Inherits="WebCuoi.qlPhanHoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div style="text-align: center">
        <h1 style="color: #336600">PHẢN HỒI TỪ KHÁCH HÀNG</h1>
    </div>
    <br />
    <div style="margin-left: 25%">
    <asp:gridview runat="server" ID="gvPhanHoi" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idPhanHoi" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" OnRowCommand="Unnamed1_RowCommand" Width="80%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="idPhanHoi" HeaderText="Mã phản hồi" InsertVisible="False" ReadOnly="True" SortExpression="idPhanHoi" />
            <asp:BoundField DataField="tenNPH" HeaderText="Tên người PH" SortExpression="tenNPH" />
            <asp:BoundField DataField="mail" HeaderText="Mail người PH" SortExpression="mail" />
            <asp:BoundField DataField="phanHoi" HeaderText="Phản hồi" SortExpression="phanHoi" />
            <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" Text="Button" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:gridview>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [idPhanHoi], [tenNPH], [mail], [phanHoi] FROM [PhanHoi]"></asp:SqlDataSource>
</asp:Content>
