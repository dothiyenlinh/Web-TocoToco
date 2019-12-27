<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucHeader.ascx.cs" Inherits="WebCuoi.UC.ucHeader" %>
    
<header>
    <div id="dn">
        <img src="../Images/icon/dangnhap.jpg" title="Đăng nhập">
        <a href="~/LoginDN.aspx" id="aDangNhap" runat="server">Đăng nhập</a>
        <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="Tên đăng nhập"></asp:Label>
        <a>| </a>
        <a href="~/DangKy.aspx" id="aDangKi" runat="server">Đăng ký</a>
        <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click"> Đăng Xuất</asp:LinkButton>
        <a href="GioHang.aspx">
            <img src="../Images/icon/Giohang.gif" title="Giỏ hàng" />Giỏ hàng<span>
                    (<asp:Label ID="lbTongSL" runat="server" Text="0"></asp:Label>)</span></a>
    </div>
</header>

<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <img id="logo" src="../Images/Banner/logo.png" alt="" />
    <a class="navbar-brand" href="khTrangChu.aspx" style="font-size: 25px">Trang Chủ</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
        aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="khGioiThieu.aspx" style="font-size: 25px">Giới Thiệu <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="SanPham.aspx" style="font-size: 25px">Sản Phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="khLienHe.aspx" style="font-size: 25px">Liên Hệ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="PhanHoiKH.aspx" style="font-size: 25px">Phản Hồi</a>
            </li>
        </ul>
        <%--<form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Tìm Kiếm" />
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>--%>
    </div>
</nav>
