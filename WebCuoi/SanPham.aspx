<%@ Page Title="" Language="C#" MasterPageFile="~/SPMaster.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="WebCuoi.SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 752px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section  style="width:760px;">
        <p class="auto-style2">
            Sản Phẩm
            <%--<asp:Label ID="lbTenChuDe" runat="server" Text="Label"></asp:Label>--%>
        </p>
        <asp:DataList ID="dlSanPham" runat="server" RepeatColumns="3" Height="50%" Width="100%">
            <ItemTemplate>
                <div>
                    <table class="sanpham">
                        <tr>
                            <td>
                                <asp:Image CssClass="hinhsach" ID="Image1" runat="server" ImageUrl='<%# "~/Images/sanpham/"+Eval("AnhSP") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td class="sachmoi">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../khChitietsp.aspx?MaSP=" +Eval("MSP") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink>
                            </td>
                        </tr>

                        <tr>
                            <td class="dongia">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# "~/Images/chonmua.png" %>' NavigateUrl='<%# "../GioHang.aspx?MaSP=" + Eval("MSP") %>'>HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </section>
</asp:Content>
