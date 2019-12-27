<%@ Page Title="" Language="C#" MasterPageFile="~/khMaster.Master" AutoEventWireup="true" CodeBehind="PhanHoiKH.aspx.cs" Inherits="WebCuoi.PhanHoiKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <div style="text-align: center">
        <h1 style="color: #336600">PHẢN HỒI TỪ KHÁCH HÀNG</h1>
    </div>
    <br />
    <div style="margin-left: 27%">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="60%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="tenNPH" HeaderText="Tên người phản hồi" SortExpression="tenNPH" />
                <asp:BoundField DataField="mail" HeaderText="Email" SortExpression="mail" />
                <asp:BoundField DataField="phanHoi" HeaderText="Phản hồi" SortExpression="phanHoi" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [tenNPH], [mail], [phanHoi] FROM [PhanHoi]"></asp:SqlDataSource>
</asp:Content>
