using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class ThemNguoiDung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = @"Select 1 from Admin where TenUserAdmin = N'" + txtdn.Text + "'";
                if(chuoikn.GetData(str1).Rows.Count>0)
                {
                    lbthongbao.Text = "Tên đăng nhập đã tồn tại";
                    txtdn.Focus();
                }
                else
                {
                    string tendn = txtdn.Text;
                    string matkhau = txtmatkhau.Text;
                    string hoten = txthoten.Text;
                    string ngaysinh = txtngaysinh.Text;
                    string mail = txtmail.Text;
                    string diachi = txtDiaChi.Text;
                    string sodt = txtSoDT.Text;
                    string s = "insert into Admin(HotenAdmin,DiachiAdmin,PhoneAdmin,TenUserAdmin,MatKhauAdmin,NgaySinhAdmin,EmailAdmin) values(N'" + hoten + "'  , N'" + diachi + "' , N'" + sodt + "', N'" + tendn + "', N'" + matkhau + "', N'" + ngaysinh + "', N'" + mail + "')";
                    chuoikn.Execute(s);
                    Response.Redirect("qlNguoiDung.aspx");
                }
            }
            catch
            {
                lbthongbao.Text = "Thất bại";
            }
        }
    }
}