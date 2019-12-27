<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ThemLoaiSP.aspx.cs" Inherits="WebCuoi.ThemLoaiSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <div style="text-align:center">
        <h1 style="color: #CC9900">THÊM MỚI LOẠI SẢN PHẨM</h1>
        <p style="color: #CC9900">&nbsp;</p>
        <p style="color: #CC9900">&nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Tên loại sản phẩm: " CssClass="auto-style2"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BackColor="Silver" BorderColor="#663300" CssClass="auto-style2"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Lưu" Width="150px" BackColor="#006600" Height="45px" OnClick="Button1_Click" />
        </p>
        
    </div>
</asp:Content>
