<%@ Page Title="" Language="C#" MasterPageFile="~/khMaster.Master" AutoEventWireup="true" CodeBehind="khLienHe.aspx.cs" Inherits="WebCuoi.khLienHe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <div id="tdlienhe">
                    <p>PHẢN HỒI TỪ KHÁCH HÀNG</p>
                    <div>
                        <asp:TextBox class="cllienhe" ID="TextBox1" runat="server" Text="Tên của bạn *"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox class="cllienhe" ID="TextBox2" runat="server" Text="Email của bạn *"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox class="cllienhe" ID="TextBox3" runat="server" Text="Phản hồi *" Height="178px"></asp:TextBox>
                    </div>

                    <br />
                    <br />
                    <br />
                    <div style="margin-left: 7%">
                        <asp:Button ID="BtnLienHe" runat="server" Text="Gửi phản hồi" Height="78px" Width="199px" BackColor="#336600" BorderStyle="Solid" ForeColor="White" Style="font-size: 16pt; border-radius: 10px" OnClick="BtnLienHe_Click" />
                    </div>
                    <br />
                    <br />
                </div>
            </td>

            <td>
                <div id="thongtin">
                    <p id="idttin">THÔNG TIN</p>
                    <br>

                    <ul>
                        <li class="cltt">
                            <img class="icontt" src="Images/gioithieu/1.jpg" alt="">
                            <a
                                href="">Hotline: 0909 990 099</a></li>
                        <br>
                        <li class="cltt">
                            <img class="icontt" src="Images/gioithieu/2.jpg" alt="">
                            <a
                                href="https://mail.google.com/mail/u/0/#inbox">dolinh.17.09.99@gmail.com</a></li>
                        <br>
                        <li class="cltt">
                            <img class="icontt" src="Images/gioithieu/3.jpg" alt="">
                            <a
                                href="https://www.facebook.com/profile.php?id=100006177555754">www.facebook.com/dolinh
                            </a></li>
                        <br>
                        <li class="cltt">
                            <img class="icontt" src="Images/gioithieu/4.jpg" alt="">
                            <a
                                href="">176-Cống Quẹo-Long Tân-Dầu Tiếng-Bình Dương</a></li>
                    </ul>
                </div>

            </td>
        </tr>
    </table>

    <div class="row">
        <div class="col">
        </div>
        <div class="col">
            <h3 style="font-size: 20pt; color: #000000">LIÊN HỆ VỚI CHÚNG TÔI</h3>
            <a href="https://www.facebook.com/profile.php?id=100006177555754">
                <img class="lienket"
                    src="Images/icon/face.jpg" alt="" />
            </a>
            <a href="https://www.instagram.com/doyenlinh917/">
                <img class="lienket" src="Images/icon/insta.jpg"
                    alt="" />
            </a>
        </div>
        <div class="col">
        </div>
    </div>
    <br />
    <br />
    <br />

</asp:Content>
