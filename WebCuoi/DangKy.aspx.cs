using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCuoi
{
    public partial class DangKy : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            try
            {
                string str1 = @"Select 1 from KhachHang where TenUserKH = N'" + txtdn.Text + "'";
                if (chuoikn.GetData(str1).Rows.Count > 0)
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
                    string s = "insert into KHACHHANG(HotenKH,DiachiKH,PhoneKH,TenUserKH,MatKhauKH,NgaySinhKH,EmailKH) values(N'" + hoten + "'  , N'" + diachi + "' , N'" + sodt + "', N'" + tendn + "', N'" + matkhau + "', N'" + ngaysinh + "', N'" + mail + "')";
                    chuoikn.Execute(s);
                    Response.Redirect("LoginDN.aspx");
                }
            }
            catch
            {
                lbthongbao.Text = "Thất bại";
            }

            
        }    
    }
}