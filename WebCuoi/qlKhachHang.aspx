<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="qlKhachHang.aspx.cs" Inherits="WebCuoi.qlKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div style="text-align: center">
        <h1 style="color: #336600">DANH SÁCH KHÁCH HÀNG</h1>
    </div>

    <div style="text-align: center; margin-left: 15%">
        <br />
        <br />
        <asp:gridview ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="80%" OnRowCommand="GridView1_RowCommand1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="Mã KH" InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="HoTenKH" HeaderText="Họ tên KH" SortExpression="HoTenKH" />
                <asp:BoundField DataField="DiachiKH" HeaderText="Địa chỉ KH" SortExpression="DiachiKH" />
                <asp:BoundField DataField="PhoneKH" HeaderText="Số ĐT" SortExpression="PhoneKH" />
                <asp:BoundField DataField="TenUserKH" HeaderText="Tên User" SortExpression="TenUserKH" />
                <asp:BoundField DataField="NgaySinhKH" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày Sinh KH" SortExpression="NgaySinhKH" />
                <asp:BoundField DataField="EmailKH" HeaderText="Email KH" SortExpression="EmailKH" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [MaKH], [HoTenKH], [DiachiKH], [PhoneKH], [TenUserKH], [NgaySinhKH], [EmailKH] FROM [KhachHang]"></asp:SqlDataSource>
    </div>
</asp:Content>
