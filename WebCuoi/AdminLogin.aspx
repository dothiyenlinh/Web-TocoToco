<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebCuoi.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="images/icon/ictoco.jpg" type="image/x-icon">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>WELCOME TOCOTOCO </title>
    <style>
        .navbar {
            background: #ffffff !important;
            top: 0px;
            left: 0px;
        }

        .carousel-inner img {
            width: 80%;
            height: 40%;
            margin-left: 10%;
            margin-top: 10%;
        }

        .form-control {
            width: 20% !important;
        }

        .auto-style1 {
            font-size: 24px;
            color: #003366;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: #800000; text-align: center">LOGIN ADMIN</h1>
            <br />
            <br />
            <div class="login-block">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 login-sec" style="margin-top: 10%">
                            <h2 class="text-center" style="color: darkgoldenrod; margin-bottom: 2%">Đăng Nhập</h2>
                            <br />
                            <div class="form-group">
                                <label for="exampleInputEmail1" class="text-uppercase">Tên đăng nhập: </label>
                                &nbsp;
                                <asp:TextBox ID="txttendn" runat="server" Height="30px"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1" class="text-uppercase" style="width: 111px">Mật Khẩu:</label>&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Height="30px"></asp:TextBox>
                            </div>

                            <div class="form-check" style="left: -36px; top: 2px; margin-left: 40px">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" />
                                    <small>Remember Me</small>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="Login" Width="187px" Height="30px" OnClick="Button1_Click" />
                                </label>
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="lbTBdn" runat="server" ForeColor="Maroon" Style="font-size: large"></asp:Label>
                            </div>

                        </div>
                        <div class="col-md-8 banner-sec">

                            <img class="d-block img-fluid" src="./Images/Banner/dautam.jpg" style="margin-left: 15%;"
                                alt="First slide" />
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
