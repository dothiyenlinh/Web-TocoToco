<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="qlNguoiDung.aspx.cs" Inherits="WebCuoi.qlNguoiDung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div style="text-align: center">
        <h1 style="color: #336600">DANH SÁCH NGƯỜI DÙNG</h1>
        <asp:HyperLink ID="HyperLink1" ForeColor="Maroon" runat="server" CssClass="auto-style2" NavigateUrl="~/ThemNguoiDung.aspx">Thêm Người Dùng</asp:HyperLink>
    </div>

    <div style="text-align: center; margin-left: 15%">
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="80%" DataKeyNames="MaAdmin" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaAdmin" HeaderText="Mã Admin" SortExpression="MaAdmin" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="HoTenAdmin" HeaderText="Họ Tên" SortExpression="HoTenAdmin" />
                <asp:BoundField DataField="DiachiAdmin" HeaderText="Địa Chỉ" SortExpression="DiachiAdmin" />
                <asp:BoundField DataField="PhoneAdmin" HeaderText="Phone " SortExpression="PhoneAdmin" />
                <asp:BoundField DataField="TenUserAdmin" HeaderText="Tên User" SortExpression="TenUserAdmin" />
                <asp:BoundField DataField="NgaySinhAdmin" HeaderText="Ngày Sinh" SortExpression="NgaySinhAdmin" />
                <asp:BoundField DataField="EmailAdmin" HeaderText="Email" SortExpression="EmailAdmin" />
                <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                <asp:ButtonField ButtonType="Image" HeaderText="Sửa" ImageUrl="~/Images/Edit.png" Text="Button" CommandName="Sua" />
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [HoTenAdmin], [DiachiAdmin], [PhoneAdmin], [TenUserAdmin], [NgaySinhAdmin], [EmailAdmin], [MaAdmin] FROM [Admin]"></asp:SqlDataSource>
    </div>


</asp:Content>
