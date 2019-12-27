<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ThemNguoiDung.aspx.cs" Inherits="WebCuoi.ThemNguoiDung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            font-size: 20pt;
        }

        .auto-style2 {
        }

        .auto-style4 {
        }

        .auto-style10 {
            width: 364px;
        }

        .auto-style11 {
            height: 26px;
            width: 364px;
        }

        .auto-style12 {
            height: 69px;
            width: 364px;
        }

        .auto-style13 {
            width: 347px;
        }

        .auto-style14 {
            height: 26px;
            width: 347px;
        }

        .auto-style15 {
            height: 69px;
            width: 347px;
        }

        .auto-style16 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 style="color: #CC9900; text-align:center">THÊM NGƯỜI DÙNG</h1>
        <div style="margin-left: 25%;" class="auto-style16">
            <table class="auto-style1" style="border: thin solid #008000">
                <%--<tr>
                    <td class="auto-style3" colspan="2" style="border: thin solid #006600; background-color: #FF9933">Đăng Ký Khách Hàng</td>
                </tr>--%>
                <tr>
                    <td class="auto-style4" colspan="2" style="border: thin solid #008000; background-color: #336600; color: #FFFFFF;">Thông tin đăng nhập </td>
                </tr>
                <tr>
                    <td class="auto-style10">Tên đăng nhập</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtdn" runat="server" Height="29px" Width="181px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvTendn" runat="server" ControlToValidate="txtdn" ErrorMessage="Tên đăng  nhập không rỗng" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Mật khẩu</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Height="29px" Width="181px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ControlToValidate="txtmatkhau" ErrorMessage="Mật khẩu không rỗng" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <br />
                <br />
                <tr>
                    <td class="auto-style10">Nhập lại mật khẩu</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtnhaplai" runat="server" TextMode="Password" Height="29px" Width="181px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvNhaplai" runat="server" ControlToValidate="txtnhaplai" ErrorMessage="Nhập lại không rỗng" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplai" ErrorMessage="Mật khẩu nhập lại không đúng" ForeColor="#CC0000">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="border: thin solid #008000; background-color: #336600; color: #FFFFFF;">Thông tin cá nhân</td>
                </tr>
                <tr>
                    <td class="auto-style10">Họ và Tên</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txthoten" runat="server" Height="29px" Width="181px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ControlToValidate="txthoten" ErrorMessage="Họ tên không rỗng" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Ngày sinh</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtngaysinh" runat="server" TextMode="Date" Width="181px" Height="29px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtngaysinh" ErrorMessage="Ngày sinh không hợp lệ" ForeColor="#CC0000" Operator="DataTypeCheck" Type="Date">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Địa chỉ</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtDiaChi" runat="server" Height="29px" Width="181px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Email</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtmail" runat="server" Height="29px" Width="181px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtmail" ErrorMessage="Email không hợp lệ" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Số điện thoại</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtSoDT" runat="server" Height="29px" Width="181px" BackColor="#999966" CssClass="auto-style17" style="font-size: 14pt"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style15">
                        <br />
                        <asp:Button ID="btndangky" runat="server" Text="Thêm" BackColor="#669900" Height="41px" Width="101px" OnClick="btndangky_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lbthongbao" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:ValidationSummary ID="vsbangloi" runat="server" HeaderText="Danh sách lỗi" ShowMessageBox="True" ForeColor="#CC0000" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
