using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using HRMnet.Models;

namespace HRMnet.Controllers
{
    public class AccountController : Controller
    {
        private QUANLYNHANSUEntities1 db = new QUANLYNHANSUEntities1();

        // GET: Account/Login
        public ActionResult Login()
        {
            return View();
        }

        // POST: Account/Login
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string tenDangNhap, string matKhau)
        {
            if (ModelState.IsValid)
            {
                var user = db.NguoiDungs.FirstOrDefault(u => u.TenDangNhap == tenDangNhap && u.MatKhau == matKhau);
                if (user != null)
                {
                    if (string.Equals(user.VaiTro, "admin", System.StringComparison.OrdinalIgnoreCase))
                    {
                        FormsAuthentication.SetAuthCookie(user.TenDangNhap, false);
                        Session["MaNguoiDung"] = user.MaNguoiDung;
                        Session["TenDangNhap"] = user.TenDangNhap;
                        Session["VaiTro"] = user.VaiTro;
                        return RedirectToAction("Index", "NhanViens");
                    }
                    else
                    {
                        ModelState.AddModelError("", "Bạn không có quyền truy cập.");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "Tên đăng nhập hoặc mật khẩu không đúng.");
                }
            }
            return View();
        }

        // GET: Account/Logout
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Login", "Account");
        }
    }
}