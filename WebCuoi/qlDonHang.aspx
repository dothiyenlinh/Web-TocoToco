<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="qlDonHang.aspx.cs" Inherits="WebCuoi.qlDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 120px;
        }

        .auto-style3 {
            margin-left: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    
    <div style="text-align: center">
        <br />
        <br />
        <h1 style="color: #336600">ĐƠN HÀNG</h1>
    </div>
    <div style="text-align: center; color: #336600; margin-left: 15%">
        <p style="color: #336600">&nbsp;</p>
        <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" cellpadding="4" datasourceid="SqlDataSource1" forecolor="#333333" gridlines="None" horizontalalign="Center" width="80%" OnRowCommand="GridView1_RowCommand">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="NgayDH" HeaderText="Ngày đặt hàng" SortExpression="NgayDH" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="TriGia" HeaderText="Tổng tiền" SortExpression="TriGia" />
                    <asp:BoundField DataField="TenNguoiNhan" HeaderText="Tên người nhận" SortExpression="TenNguoiNhan" />
                    <asp:BoundField DataField="DiaChiNhan" HeaderText="Địa chỉ nhận" SortExpression="DiaChiNhan" />
                    <asp:BoundField DataField="DienThoaiNhan" HeaderText="Điện thoại nhận" SortExpression="DienThoaiNhan" />
                    <asp:CheckBoxField DataField="HTThanhToan" HeaderText="Hình thức thanh toán" SortExpression="HTThanhToan" />
                    <asp:CheckBoxField DataField="HTGiaoHang" HeaderText="Hình thức giao hàng" SortExpression="HTGiaoHang" />
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
        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:conn %>" selectcommand="SELECT [MaKH], [NgayDH], [TriGia], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [HTThanhToan], [HTGiaoHang] FROM [DonDatHang]"></asp:sqldatasource>

    </div>
    <br />
    <br />
    <br />
    <div style="text-align: center">
        <p style="color: #336600">&nbsp;&nbsp;&nbsp; Giao hàng:&nbsp;&nbsp; - Check: giao trực tiếp</p>
    </div>
    <div style="text-align: center">
        <p style="color: #336600" class="auto-style2">-Không check: chuyển giao</p>
    </div>
    <div style="text-align: center">
        <p style="color: #336600" class="auto-style2">Thanh toán: - Check: Thanh toán trước khi giao hàng</p>
    </div>
    <div style="text-align: center">
        <p style="color: #336600" class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; - Không check: Thanh toán sau khi giao hàng</p>
    </div>
</asp:Content>
