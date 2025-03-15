using System;
using System.Linq;
using System.Web.Mvc;
using HRMnet.Models;

namespace HRMnet.Controllers
{
    public class PhongBansController : Controller
    {
        private QUANLYNHANSUEntities1 db = new QUANLYNHANSUEntities1();

        // GET: PhongBans
        public ActionResult Index()
        {
            return View();
        }

        // GET: PhongBans/GetPhongBan
        public ActionResult GetPhongBan(int page = 1, int pageSize = 5)
        {
            var phongBans = db.PhongBans.OrderBy(pb => pb.MaPhongBan)
                                        .Skip((page - 1) * pageSize)
                                        .Take(pageSize)
                                        .ToList();
            var totalPhongBans = db.PhongBans.Count();
            var formattedPhongBans = phongBans.Select(pb => new
            {
                pb.MaPhongBan,
                pb.TenPhongBan,
                pb.MoTa,
                pb.SoDienThoai,
                pb.Email
            }).ToList();

            return Json(new
            {
                success = true,
                phongBans = formattedPhongBans,
                totalPages = (int)Math.Ceiling((double)totalPhongBans / pageSize),
                currentPage = page
            }, JsonRequestBehavior.AllowGet);
        }

        // GET: PhongBans/GetPhongBanById
        public ActionResult GetPhongBanById(int id)
        {
            var phongBan = db.PhongBans.Find(id);
            if (phongBan == null)
            {
                return Json(new { success = false, message = "Phòng Ban không tồn tại" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new
            {
                success = true,
                data = new
                {
                    phongBan.MaPhongBan,
                    phongBan.TenPhongBan,
                    phongBan.MoTa,
                    phongBan.SoDienThoai,
                    phongBan.Email
                }
            }, JsonRequestBehavior.AllowGet);
        }

        // POST: PhongBans/AddPhongBan
        [HttpPost]
        public ActionResult AddPhongBan(PhongBan phongBan)
        {
            if (ModelState.IsValid)
            {
                db.PhongBans.Add(phongBan);
                db.SaveChanges();
                return Json(new { success = true, message = "Thêm phòng ban thành công" });
            }
            return Json(new { success = false, message = "Dữ liệu không hợp lệ" });
        }

        // POST: PhongBans/UpdatePhongBan
        [HttpPost]
        public ActionResult UpdatePhongBan(PhongBan phongBan)
        {
            if (ModelState.IsValid)
            {
                db.Entry(phongBan).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return Json(new { success = true, message = "Cập nhật phòng ban thành công" });
            }
            return Json(new { success = false, message = "Dữ liệu không hợp lệ" });
        }

        // POST: PhongBans/DeletePhongBan
        [HttpPost]
        public ActionResult DeletePhongBan(int id)
        {
            var phongBan = db.PhongBans.Find(id);
            if (phongBan == null)
            {
                return Json(new { success = false, message = "Phòng Ban không tồn tại" });
            }

            db.PhongBans.Remove(phongBan);
            db.SaveChanges();
            return Json(new { success = true, message = "Xóa phòng ban thành công" });
        }

        // GET: PhongBans/SearchPhongBan
        public ActionResult SearchPhongBan(string searchQuery, int page = 1, int pageSize = 5)
        {
            var query = db.PhongBans.AsQueryable();

            if (!string.IsNullOrEmpty(searchQuery))
            {
                query = query.Where(pb => pb.TenPhongBan.Contains(searchQuery)
                                       || pb.MoTa.Contains(searchQuery)
                                       || pb.SoDienThoai.Contains(searchQuery)
                                       || pb.Email.Contains(searchQuery));
            }

            var phongBans = query.OrderBy(pb => pb.MaPhongBan)
                                 .Skip((page - 1) * pageSize)
                                 .Take(pageSize)
                                 .ToList();
            var totalPhongBans = query.Count();

            return Json(new
            {
                success = true,
                phongBans = phongBans.Select(pb => new
                {
                    pb.MaPhongBan,
                    pb.TenPhongBan,
                    pb.MoTa,
                    pb.SoDienThoai,
                    pb.Email
                }).ToList(),
                totalPages = (int)Math.Ceiling((double)totalPhongBans / pageSize),
                currentPage = page
            }, JsonRequestBehavior.AllowGet);
        }

        // GET: PhongBans/AddOrEdit
        public ActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return PartialView(new PhongBan());
            else
            {
                var phongBan = db.PhongBans.Find(id);
                if (phongBan == null)
                {
                    return HttpNotFound();
                }
                return PartialView(phongBan);
            }
        }
    }
}