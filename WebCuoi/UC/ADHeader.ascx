<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ADHeader.ascx.cs" Inherits="WebCuoi.UC.ADHeader" %>
<header>
    <div id="dn">
        <img src="../Images/icon/dangnhap.jpg" title="Đăng nhập">
        <a href="~/AdminLogin.aspx" id="aDangNhap" runat="server">Đăng nhập</a>
        <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="Tên đăng nhập"></asp:Label>
        <a>| </a>
        <a href="../Dangki.aspx" id="aDangKi" runat="server">Đăng ký</a>
        <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click"> Đăng Xuất</asp:LinkButton>
    </div>
</header>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <img id="logo" src="./Images/Banner/logo.png" alt="">
    <a class="navbar-brand" href="qlNguoiDung.aspx" style="font-size: 25px">Người dùng</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
        aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li class="nav-item">
                <a class="nav-link" href="qlKhachHang.aspx" style="font-size: 25px">Khách Hàng</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="qlLoaiSP.aspx" style="font-size: 25px">Loại sản phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="qlSanPham.aspx" style="font-size: 25px">Sản Phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="qlDonHang.aspx" style="font-size: 25px">Đơn hàng</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="qlPhanHoi" style="font-size: 25px">Phản hồi</a>
            </li>

        </ul>
    </div>
    <%--<input class="form-control mr-sm-2" type="text" placeholder="Tìm Kiếm">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
</nav>
