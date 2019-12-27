<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.Master" AutoEventWireup="true" CodeBehind="LoginDN.aspx.cs" Inherits="WebCuoi.LoginDN" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-block">
        <div class="container">
            <div class="row">
                <div class="col-md-4 login-sec" style="margin-top: 10%">
                    <h2 class="text-center" style="color: darkgoldenrod; margin-bottom: 2%">Đăng Nhập</h2>
                    <br />
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="text-uppercase">Tên đăng nhập: </label>
                        &nbsp;
                                <asp:TextBox ID="txttendn" runat="server" Height="25px"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-uppercase" style="width: 111px">Mật Khẩu:</label>&nbsp;
                                <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Height="26px"></asp:TextBox>
                    </div>

                    <div class="form-check" style="left: -36px; top: 2px; margin-left: 40px">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" />
                            <small>Remember Me</small>
                            <br />
                            <br />
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="187px" Height="30px" />
                        </label>
                        <br />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
                        <br />
                        <br />
                        <asp:Label ID="lbTBdn" runat="server" ForeColor="Maroon" style="font-size: large"></asp:Label>
                        
                    </div>

                </div>
                <div class="col-md-8 banner-sec">
                    <img class="d-block img-fluid" src="./Images/Banner/dautam.jpg" style="margin-left: 15%;"
                        alt="First slide" />
                </div>

            </div>
        </div>

    </div>
</asp:Content>
