<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucBanChay.ascx.cs" Inherits="WebCuoi.UC.ucBanChay" %>
<div id="banchay">
    <p>SẢN PHẨM BÁN CHẠY</p>
    <marquee behavior="scroll" direction="right" scrollamount="15" scrolldelay="100" onmousemove="stop()"
        onmouseout="start()">
                    <table>
                        <tr class="classsanpham">

                            <td class="tdsanpham">
                                <div class="divchuaanh">
                                    <img class="hinhbanchay" src="Images/sanpham/Tra/blacktea.jpg" alt="">
                                </div>
                                <p class="thep">TRÀ ĐEN - BLACKTEA</p>
                                <br>
                                <p>40.000 VNĐ</p>
                                
                            </td>
                            <td class="tdsanpham">
                                <div class="divchuaanh">
                                    <img class="hinhbanchay" src="Images/sanpham/TraSua/Panda.jpg" alt="">
                                </div>
                                <p class="thep">TRÀ SỮA PANDA</p>
                                <br>
                                <p>55.000VNĐ</p>
                                <%--<button class="btngiohangbc" name="button" type="button">Thêm vào giỏ hàng</button>--%>
                            </td>

                            <td class="tdsanpham">
                                <div class="divchuaanh">
                                    <img class="hinhbanchay" src="Images/sanpham/Tra/creamcheeseroyal.jpg" alt="">
                                </div>
                                <p class="thep">TRÀ CREAMCHEESE ROYAL</p>
                                <br>
                                <p>40.000VNĐ</p>
                                <%--<button class="btngiohangbc" name="button" type="button">Thêm vào giỏ hàng</button>--%>
                            </td>

                            <td class="tdsanpham">
                                <div class="divchuaanh">
                                    <img class="hinhbanchay" src="Images/sanpham/TraSua/tranchausoi.jpg" alt="">
                                </div>
                                <p class="thep">TRÀ SỮA TRÂN CHÂU SỢI</p>
                                <br>
                                <p>50.000VNĐ</p>
                                <%--<button class="btngiohangbc" name="button" type="button">Thêm vào giỏ hàng</button>--%>
                            </td>

                            <td class="tdsanpham">
                                <div class="divchuaanh">
                                    <img class="hinhbanchay" src="Images/sanpham/Tra/olongthaicuc.jpg" alt="">
                                </div>
                                <p class="thep">TRÀ Ô-LÔNG</p>
                                <br>
                                <p>50.000VNĐ</p>
                                <%--<button class="btngiohangbc" name="button" type="button">Thêm vào giỏ hàng</button>--%>
                            </td>

                            <td class="tdsanpham">
                                <div class="divchuaanh">
                                    <img class="hinhbanchay" src="Images/sanpham/TraSua/suongsao.jpg" alt="">
                                </div>
                                <p class="thep">TRÀ SỮA KIM CƯƠNG ĐEN</p>
                                <br>
                                <p>45.000VNĐ</p>
                                <%--<button class="btngiohangbc" name="button" type="button">Thêm vào giỏ hàng</button>--%>
                            </td>
                        </tr>
                    </table>
                </marquee>
    <%--<marquee behavior="scroll" direction="right" scrollamount="15" scrolldelay="100" onmousemove="stop()"
        onmouseout="start()">
        <asp:DataList ID="dlSachbannhieu" runat="server" RepeatColumns="5" Height="50%" Width="100%">
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
    </marquee>--%>
</div>
