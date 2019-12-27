<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xacnhandonhang.aspx.cs" Inherits="WebCuoi.Xacnhandonhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; margin-top:20%">
            <h1 style="color: #808000">Cảm ơn quý khách đã tin tưởng đặt hàng</h1>
            <asp:HyperLink ID="l" runat="server" CssClass="auto-style1" ForeColor="Maroon" NavigateUrl="~/khTrangChu.aspx">Về trang chủ</asp:HyperLink>

        </div>
    </form>
</body>
</html>
