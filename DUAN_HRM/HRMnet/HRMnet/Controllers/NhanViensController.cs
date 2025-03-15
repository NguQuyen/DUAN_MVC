using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using HRMnet.Models;

namespace HRMnet.Controllers
{
    public class NhanViensController : Controller
    {
        QUANLYNHANSUEntities1 con = new QUANLYNHANSUEntities1();

        public ActionResult GetEmp(int page = 1, int pageSize = 5)
        {
            con.Configuration.ProxyCreationEnabled = false;
            var getInfo = con.NhanViens.OrderBy(nv => nv.MaNhanVien).Skip((page - 1) * pageSize).Take(pageSize).ToList();
            var totalEmployees = con.NhanViens.Count();
            var formattedInfo = getInfo.Select(e => new {
                e.MaNhanVien,
                e.HoTen,
                e.GioiTinh,
                NgaySinh = e.NgaySinh != null ? ((DateTime)e.NgaySinh).ToString("yyyy-MM-dd") : null,
                e.DiaChi
            }).ToList();

            if (formattedInfo.Count > 0)
            {
                return Json(new
                {
                    success = true,
                    getInfo = formattedInfo,
                    totalPages = (int)Math.Ceiling((double)totalEmployees / pageSize),
                    currentPage = page
                }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false, message = "No Data Found" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpGet]
        public ActionResult AddOrEdit(int id = 0)
        {
            if (id == 0)
                return View(new NhanVien());
            else
            {
                var employee = con.NhanViens.FirstOrDefault(e => e.MaNhanVien == id);
                if (employee == null)
                    return HttpNotFound();
                return View(employee);
            }
        }

        [HttpGet]
        public ActionResult GetEmployeeById(int empID = 0)
        {
            con.Configuration.ProxyCreationEnabled = false;
            var employee = con.NhanViens.FirstOrDefault(q => q.MaNhanVien == empID);

            if (employee != null)
            {
                return Json(new
                {
                    success = true,
                    data = new
                    {
                        employee.MaNhanVien,
                        employee.HoTen,
                        employee.GioiTinh,
                        NgaySinh = employee.NgaySinh.HasValue ? employee.NgaySinh.Value.ToString("yyyy-MM-dd") : null,
                        employee.DiaChi
                    }
                }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false, message = "No data found" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult AddEmployee(NhanVien emp)
        {
            if (ModelState.IsValid)
            {
                con.NhanViens.Add(emp);
                con.SaveChanges();
                return Json(new { success = true, message = "Employee added successfully" });
            }
            else
            {
                return Json(new { success = false, message = "Invalid data" });
            }
        }

        [HttpPost]
        public ActionResult UpdateEmployee(NhanVien emp)
        {
            if (emp.MaNhanVien == 0)
            {
                return Json(new { success = false, message = "Invalid Employee ID" });
            }

            var existingEmp = con.NhanViens.FirstOrDefault(e => e.MaNhanVien == emp.MaNhanVien);
            if (existingEmp != null)
            {
                existingEmp.HoTen = emp.HoTen;
                existingEmp.GioiTinh = emp.GioiTinh;
                existingEmp.NgaySinh = emp.NgaySinh;
                existingEmp.DiaChi = emp.DiaChi;

                con.SaveChanges();
                return Json(new { success = true, message = "Employee updated successfully" });
            }
            else
            {
                return Json(new { success = false, message = "Employee not found" });
            }
        }

        [HttpPost]
        public ActionResult DeleteEmployee(int empID)
        {
            var employee = con.NhanViens.FirstOrDefault(e => e.MaNhanVien == empID);
            if (employee != null)
            {
                con.NhanViens.Remove(employee);
                con.SaveChanges();
                return Json(new { success = true, message = "Employee deleted successfully" });
            }
            else
            {
                return Json(new { success = false, message = "Employee not found" });
            }
        }

        [HttpGet]
        public ActionResult GetEmployeeDetails(int empID)
        {
            con.Configuration.ProxyCreationEnabled = false;
            var employee = con.NhanViens.FirstOrDefault(e => e.MaNhanVien == empID);
            if (employee != null)
            {
                return Json(new
                {
                    success = true,
                    data = new
                    {
                        employee.MaNhanVien,
                        employee.HoTen,
                        employee.GioiTinh,
                        NgaySinh = employee.NgaySinh.HasValue ? employee.NgaySinh.Value.ToString("yyyy-MM-dd") : null,
                        employee.DiaChi
                    }
                }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false, message = "Employee not found" }, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult SearchEmp(string searchQuery, int page = 1, int pageSize = 5)
        {
            con.Configuration.ProxyCreationEnabled = false;
            var query = con.NhanViens.AsQueryable();

            if (!string.IsNullOrEmpty(searchQuery))
            {
                query = query.Where(nv => nv.HoTen.Contains(searchQuery)
                                       || nv.DiaChi.Contains(searchQuery)
                                       || nv.GioiTinh.Contains(searchQuery));
            }

            var getInfo = query.OrderBy(nv => nv.MaNhanVien).Skip((page - 1) * pageSize).Take(pageSize).ToList();
            var totalEmployees = query.Count();
            var formattedInfo = getInfo.Select(e => new {
                e.MaNhanVien,
                e.HoTen,
                e.GioiTinh,
                NgaySinh = e.NgaySinh != null ? ((DateTime)e.NgaySinh).ToString("yyyy-MM-dd") : null,
                e.DiaChi
            }).ToList();

            if (formattedInfo.Count > 0)
            {
                return Json(new
                {
                    success = true,
                    getInfo = formattedInfo,
                    totalPages = (int)Math.Ceiling((double)totalEmployees / pageSize),
                    currentPage = page
                }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false, message = "No Data Found" }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult Index()
        {
            return View();
        }
    }
}