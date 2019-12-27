<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SuaND.aspx.cs" Inherits="WebCuoi.SuaND" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #dangky {
            width: 50%;
            margin: auto;
            margin-top: 10px;
        }


        .cot1 {
            font-weight: bold;
            float: right;
            text-align: center;
            width: 150px;
        }

        td.dktv {
            font-weight: bold;
            font-size: 18px;
        }

        .auto-style2 {
            font-size: 16pt;
        }
        .auto-style3 {
            font-size: 16pt;
            width: 215px;
        }
        .auto-style6 {
            font-size: 20pt;
            margin-left: 15%;
            width: 215px;
        }
        .auto-style7 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="dangky" style="margin-left:35%">
        <table >

            <tr>
                <td class="dktv" colspan="2"> <h1 style="color: #CC9900; text-align:center; margin-left:8%">Sửa Người Dùng</h1></td>
            </tr>

            <br />
            <br />

            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Họ tên: </td>
                <td class="cot2">
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="cot2" Height="27px" Width="150px" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Địa chỉ:</td>
                <td class="cot2">
                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="cot2" Height="27px" Width="150px" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên User:</td>
                <td class="cot2">
                    <asp:TextBox ID="txtTenUser" runat="server" CssClass="cot2" Height="27px" Width="150px" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mật khẩu:</td>
                <td class="cot2">
                    <asp:TextBox ID="txtMatKhau" runat="server" CssClass="cot2" Height="27px" Width="150px" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngày sinh:</td>
                <td class="cot2">
                    <asp:TextBox ID="txtNgaySinh" runat="server" CssClass="cot2" Height="27px" Width="150px" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:</td>
                <td class="cot2">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="cot2" Height="27px" Width="150px" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="cot2">
                    <%--<CKEditor:CKEditorControl ID="ckMota" runat="server" Width="600px"></CKEditor:CKEditorControl>--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblThongbaoloi" runat="server" CssClass="auto-style2"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnLuu" runat="server" Font-Bold="True"
                        Font-Size="Medium" ForeColor="White" Height="37px"
                        Text="Lưu" BackColor="#006600" CssClass="auto-style7" Width="120px" />
                </td>
            </tr>
        </table>


    </div>
</asp:Content>
