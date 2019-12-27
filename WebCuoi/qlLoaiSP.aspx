<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="qlLoaiSP.aspx.cs" Inherits="WebCuoi.qlLoaiSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <br />
        <br />
        <h1 style="color: #336600">DANH SÁCH LOẠI SẢN PHẨM</h1>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Maroon" CssClass="auto-style2" NavigateUrl="~/ThemLoaiSP.aspx">Thêm Loại Sản Phẩm</asp:HyperLink>
        <br />
        <br />
        <br />
        <div style="margin-left:20%">
            <asp:GridView ID="gvLoai" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idLoai" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="80%" OnRowCommand="gvLoai_RowCommand" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="idLoai" HeaderText="Mã loại" InsertVisible="False" ReadOnly="True" SortExpression="idLoai" />
                    <asp:BoundField DataField="TenLoai" HeaderText="Tên loại" SortExpression="TenLoai" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" Text="Xoa" />
                    <asp:CommandField HeaderText="Sửa" ShowEditButton="True" />
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [Loai] WHERE [idLoai] = @original_idLoai AND [TenLoai] = @original_TenLoai" InsertCommand="INSERT INTO [Loai] ([TenLoai]) VALUES (@TenLoai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Loai]" UpdateCommand="UPDATE [Loai] SET [TenLoai] = @TenLoai WHERE [idLoai] = @original_idLoai AND [TenLoai] = @original_TenLoai">
            <DeleteParameters>
                <asp:Parameter Name="original_idLoai" Type="Int32" />
                <asp:Parameter Name="original_TenLoai" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TenLoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLoai" Type="String" />
                <asp:Parameter Name="original_idLoai" Type="Int32" />
                <asp:Parameter Name="original_TenLoai" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />

        <asp:Label ID="lbThongBaoLoi" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
