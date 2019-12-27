<%@ Page Title="" Language="C#" MasterPageFile="~/khMaster.Master" AutoEventWireup="true" CodeBehind="khTrangChu.aspx.cs" Inherits="WebCuoi.khTrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr id="trangchu1">
            <td>
                <img src="Images/Banner/trang_chu.png" alt=""/></td>
            <td>
                <p id="chao"><b>CHÀO MỪNG CÁC BẠN ĐẾN VỚI</b></p>
                <br>
                <h1><i>TOCOTOCO</i></h1>
                <br>
                <p class="ptrangchu">TocoToco – Trà sữa của hạnh phúc.</p>

                <p class="ptrangchu">
                    Với sứ mệnh mang tới niềm vui và hạnh phúc, TocoToco hy vọng sẽ tạo nên
                            một nét văn hóa giải trí bên cạnh ly trà sữa Ngon – sạch – tươi
                </p>
            </td>
        </tr>
    </table>
    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Images/Banner/tranchauduongden.jpg" alt="" width="90%" height="40%" />
            </div>
            <div class="carousel-item">
                <img src="Images/gioithieu/top10.png" alt="" width="90%" height="40%" />
            </div>
            <div class="carousel-item">
                <img src="Images/Banner/banner4.png" alt="" width="90%" height="40%" />
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</asp:Content>
