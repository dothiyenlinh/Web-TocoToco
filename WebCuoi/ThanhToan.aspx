<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="WebCuoi.ThanhToan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center">THÔNG TIN ĐƠN ĐẶT HÀNG</h1>
    <div style="margin-left:25%;padding-left:5%; border:solid 2px; width: 50%; background-color: beige">
        <br />
        <h2><strong>THÔNG TIN TÀI KHOẢN</strong></h2>
        <asp:Label ID="lbHoTen1" runat="server" Text="Họ tên: " style="font-size: x-large"></asp:Label>

        <asp:Label ID="lbHoTen" runat="server" style="font-size: x-large"></asp:Label>

        <br />
        <asp:Label ID="lbDiaChi0" runat="server" Text="Địa chỉ: " style="font-size: x-large"></asp:Label>
        <asp:Label ID="lbDiaChi" runat="server" style="font-size: x-large"></asp:Label>
        <br />
        <asp:Label ID="lbDienThoai0" runat="server" Text="Điện thoại: " style="font-size: x-large"></asp:Label>
        <asp:Label ID="lbDienThoai" runat="server" style="font-size: x-large"></asp:Label>
        <br />
        <asp:Label ID="lbEmail0" runat="server" Text="Email: " style="font-size: x-large"></asp:Label>

        <asp:Label ID="lbEmail" runat="server" style="font-size: x-large"></asp:Label>

        <br />
        <br />
        <h2><strong>THÔNG TIN GIỎ HÀNG</strong></h2>
        <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="446px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" SortExpression="TenSP" />
                <asp:BoundField DataField="Gia" HeaderText="Giá sản phẩm" SortExpression="Gia" />
                <asp:BoundField DataField="SL" HeaderText="Số lượng " SortExpression="SL" />
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" SortExpression="ThanhTien" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [MSP], [TenSP], [Gia], [SL], [ThanhTien] FROM [GioHang]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="lbTongTien0" runat="server" Text="Tổng tiền: " style="font-size: x-large"></asp:Label>

        <asp:Label ID="lbTongTien" runat="server" style="font-size: x-large" ForeColor="Maroon"></asp:Label>

        <br />
        <br />
        <h2><strong>THÔNG TIN GIAO HÀNG</strong></h2>
        <asp:Calendar ID="calNgayGiao" runat="server"></asp:Calendar>
        <br />
        <asp:Label ID="lbNguoiNhan" runat="server" Text="Người nhận: " style="font-size: x-large"></asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNguoiNhan" runat="server" Height="27px" Width="156px"></asp:TextBox>
        <br />
        <asp:Label ID="lbDiaChiNhan" runat="server" Text="Địa chỉ nhận: " style="font-size: x-large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDiaChi" runat="server" Height="27px" Width="156px"></asp:TextBox>
        <br />
        <asp:Label ID="lbDienThoaiNhan" runat="server" Text="Điện thoại: " style="font-size: x-large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDienThoaiNhan" runat="server" Height="27px" Width="156px"></asp:TextBox>
        <br />
        <asp:Label ID="lbHTTT" runat="server" Text="Hình thức thanh toán: " style="font-size: x-large"></asp:Label>
        <asp:RadioButtonList ID="rblHinhThucThanhToan" runat="server" style="font-size: x-large">
            <asp:ListItem Value="0" Selected="True">Thanh toán trước khi giao hàng</asp:ListItem>
            <asp:ListItem Value="1">Thanh toán sau khi giao hàng</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lbHTGH" runat="server" Text="Hình thức giao hàng: " style="font-size: x-large"></asp:Label>
        <asp:RadioButtonList ID="rblHinhThucGiaoHang" runat="server" style="font-size: x-large">
            <asp:ListItem Value="0" Selected="True">Giao trực tiếp</asp:ListItem>
            <asp:ListItem Value="1">Chuyển giao</asp:ListItem>
        </asp:RadioButtonList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="lbDongY" runat="server" Height="42px" Text="Đồng ý" Width="126px" OnClick="lbDongY_Click" />
        <br />
        <br />
        <asp:Label ID="lbThongBaoLoi" runat="server" style="font-size: x-large"></asp:Label>
        <br />
        <br />
    </div>

</asp:Content>
