<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.Master" AutoEventWireup="true" CodeBehind="doimatkhau.aspx.cs" Inherits="WebCuoi.doimatkhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-block">
        <div class="container">
            <div class="row">
                <div class="col-md-4 login-sec" style="margin-top: 10%">
                    <h2 class="text-center" style="color: darkgoldenrod; margin-bottom: 2%">Đổi mật khẩu</h2>
                    <br />
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="text-uppercase">Tên đăng nhập: </label>
                        &nbsp;
                                <asp:TextBox ID="txttendn" runat="server" Height="25px" BackColor="#6699FF"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-uppercase" style="width: 111px">Mật khẩu cũ:</label>&nbsp;
                                <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Height="26px" BackColor="#6699FF"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-uppercase" style="width: 111px">Mật khẩu mới:</label>&nbsp;
                                <asp:TextBox ID="txtmkmoi" runat="server" TextMode="Password" Height="26px" BackColor="#6699FF"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ControlToValidate="txtmkmoi" ErrorMessage="Mật khẩu không rỗng" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPassword1" class="text-uppercase" style="width: 111px">Nhập lại:</label>&nbsp;
                                <asp:TextBox ID="txtnhaplai" runat="server" TextMode="Password" Height="26px" BackColor="#6699FF"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNhaplai" runat="server" ControlToValidate="txtnhaplai" ErrorMessage="Nhập lại không rỗng" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtmkmoi" ControlToValidate="txtnhaplai" ErrorMessage="Mật khẩu nhập lại không đúng" ForeColor="#CC0000">(*)</asp:CompareValidator>

                    </div>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Đồng ý" Width="187px" Height="30px" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lbTBdn" runat="server" ForeColor="Maroon" Style="font-size: large"></asp:Label>

                    <br />
                    <br />
                    <asp:ValidationSummary ID="vsbangloi" runat="server" ForeColor="#CC0000" HeaderText="Danh sách lỗi" ShowMessageBox="True" />
                    <br />

                    <div class="form-check" style="left: -36px; top: 130px; margin-left: 40px">
                        <label class="form-check-label">
                        </label>

                        <br />
                        <br />
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
