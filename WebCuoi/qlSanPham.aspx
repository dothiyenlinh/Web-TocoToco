<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="qlSanPham.aspx.cs" Inherits="WebCuoi.qlSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">
        <br />
        <br />
        <h1 style="color: #336600">DANH SÁCH SẢN PHẨM</h1>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Maroon" CssClass="auto-style2" NavigateUrl="~/ThemSP.aspx" style="font-size: x-large">Thêm Sản Phẩm</asp:HyperLink>
        <br />
        <br />
        <br />
        <div style="margin-left: 15%">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MSP" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="90%" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MSP" HeaderText="Mã sản phẩm" InsertVisible="False" ReadOnly="True" SortExpression="MSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
                    <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
                    <asp:BoundField DataField="Thongtinchitiet" HeaderText="Thông tin chi tiết" SortExpression="Thongtinchitiet" />
                    <asp:BoundField DataField="AnhSP" HeaderText="Ảnh sản phẩm" SortExpression="AnhSP" />
                    <asp:BoundField DataField="NgayDang" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày cập nhật" SortExpression="NgayDang" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" Text="Button" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MSP] = @original_MSP AND [TenSP] = @original_TenSP AND (([Gia] = @original_Gia) OR ([Gia] IS NULL AND @original_Gia IS NULL)) AND (([Thongtinchitiet] = @original_Thongtinchitiet) OR ([Thongtinchitiet] IS NULL AND @original_Thongtinchitiet IS NULL)) AND (([AnhSP] = @original_AnhSP) OR ([AnhSP] IS NULL AND @original_AnhSP IS NULL)) AND (([NgayDang] = @original_NgayDang) OR ([NgayDang] IS NULL AND @original_NgayDang IS NULL))" InsertCommand="INSERT INTO [SanPham] ([TenSP], [Gia], [Thongtinchitiet], [AnhSP], [NgayDang]) VALUES (@TenSP, @Gia, @Thongtinchitiet, @AnhSP, @NgayDang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MSP], [TenSP], [Gia], [Thongtinchitiet], [AnhSP], [NgayDang] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [Gia] = @Gia, [Thongtinchitiet] = @Thongtinchitiet, [AnhSP] = @AnhSP, [NgayDang] = @NgayDang WHERE [MSP] = @original_MSP AND [TenSP] = @original_TenSP AND (([Gia] = @original_Gia) OR ([Gia] IS NULL AND @original_Gia IS NULL)) AND (([Thongtinchitiet] = @original_Thongtinchitiet) OR ([Thongtinchitiet] IS NULL AND @original_Thongtinchitiet IS NULL)) AND (([AnhSP] = @original_AnhSP) OR ([AnhSP] IS NULL AND @original_AnhSP IS NULL)) AND (([NgayDang] = @original_NgayDang) OR ([NgayDang] IS NULL AND @original_NgayDang IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_MSP" Type="Int32" />
                    <asp:Parameter Name="original_TenSP" Type="String" />
                    <asp:Parameter Name="original_Gia" Type="Double" />
                    <asp:Parameter Name="original_Thongtinchitiet" Type="String" />
                    <asp:Parameter Name="original_AnhSP" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_NgayDang" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="Gia" Type="Double" />
                    <asp:Parameter Name="Thongtinchitiet" Type="String" />
                    <asp:Parameter Name="AnhSP" Type="String" />
                    <asp:Parameter DbType="Date" Name="NgayDang" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="Gia" Type="Double" />
                    <asp:Parameter Name="Thongtinchitiet" Type="String" />
                    <asp:Parameter Name="AnhSP" Type="String" />
                    <asp:Parameter DbType="Date" Name="NgayDang" />
                    <asp:Parameter Name="original_MSP" Type="Int32" />
                    <asp:Parameter Name="original_TenSP" Type="String" />
                    <asp:Parameter Name="original_Gia" Type="Double" />
                    <asp:Parameter Name="original_Thongtinchitiet" Type="String" />
                    <asp:Parameter Name="original_AnhSP" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_NgayDang" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
