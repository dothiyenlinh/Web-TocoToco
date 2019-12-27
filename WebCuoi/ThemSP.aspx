<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="WebCuoi.ThemSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: 20pt;
        }
        .auto-style4 {
            font-size: 16pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div>
        <div style="text-align: center">
            <br />
            <br />
            <h1 style="color: #CC9900">THÊM MỚI SẢN PHẨM</h1>
            <br />
            <br />
            &nbsp;<asp:Label ID="lbTenSP" runat="server" Text="Tên sản phẩm: " CssClass="auto-style3"></asp:Label>
            &nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtTenSP" runat="server" Height="29px" Width="200px" BackColor="#999966"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Label ID="lbGia" runat="server" Text="Giá: " CssClass="auto-style3"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtGia" runat="server" Height="29px" Width="200px" BackColor="#999966"></asp:TextBox>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label3" runat="server" Text="Mô tả: " CssClass="auto-style3"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtMoTa" runat="server" Height="29px" Width="200px" BackColor="#999966"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Hình minh họa: " CssClass="auto-style3"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="fupAnh" runat="server" Height="29px" Width="200px" BackColor="#999966" />
            &nbsp;&nbsp;&nbsp;&nbsp;

        <br />
            <br />
            &nbsp;
            <asp:Label ID="Label5" runat="server" Text="Mã loại: " CssClass="auto-style3"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="ddlMaLoai" runat="server" Height="29px" Width="200px" BackColor="#999966"></asp:DropDownList>
            <br />
            <br />
            &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Ngày cập nhật: " CssClass="auto-style3"></asp:Label>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtNgayDang" runat="server" Height="29px" Width="200px" BackColor="#999966"></asp:TextBox>

            <br />
            <br />
            <asp:Button ID="btnLuu" runat="server" Text="Lưu" BackColor="#006600" Height="38px" Width="148px" OnClick="btnLuu_Click" CssClass="auto-style3" />
            <br />
            <br />
            <br />
            <asp:Label ID="lbThongBao" runat="server" CssClass="auto-style4"></asp:Label>
            <br />
            <br />
            <br />
        </div>

    </div>
</asp:Content>
