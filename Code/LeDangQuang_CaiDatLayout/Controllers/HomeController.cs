using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LeDangQuang_CaiDatLayout.Areas.Admin.Data;
using PagedList;

namespace LeDangQuang_CaiDatLayout.Controllers
{
    public class HomeController : Controller
    {
        private VnBook b = new VnBook();
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string tenDN, string matkhau)
        {
            if (ModelState.IsValid)
            {
                var user = b.TaiKhoans.Where(u => u.TenDN.Equals(tenDN) &&
               u.MatKhau.Equals(matkhau)).ToList();
                if (user.Count() > 0)
                {
                    Session["HoTen"] = user.FirstOrDefault().HoTen;
                    Session["Email"] = user.FirstOrDefault().TenDN;
                    Session["idUser"] = user.FirstOrDefault().MaTK;
                    Session["Quyen"] = user.FirstOrDefault().Quyen;
                    if(Convert.ToBoolean(Session["Quyen"]) == false)
                    {
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ViewBag.error = "Vui lòng đăng nhập bằng tài khoản khách hàng";
                        return View();
                    }   
        
                }
                else
                {
                    ViewBag.error = "Tài khoản hoặc mật khẩu không chính xác";
                }
            }
            return View();
        }
        public ActionResult TacGia()
        {
            var tacgia = b.TacGias.Select(n => n);
            return View(tacgia);
        }
        public ActionResult listsach(int id, int? page)
        {
            var sachs = b.Saches.Where(s => s.MaTG.Equals(id)).Select(s => s).ToList();
            if (sachs.Count > 0)
            {
                int pageSize = 2;
                int pageNumber = (page ?? 1);
                return View(sachs.ToPagedList(pageNumber,pageSize));
            }
            else
            {
                ViewBag.Message = "Không có sách của tác giả này";
                int pageSize = 2;
                int pageNumber = (page ?? 1);
                return View(sachs.ToPagedList(pageNumber, pageSize));
            }
        }
        public ActionResult sachinfor(int id)
        {
            var thongtin = b.Saches.Find(id);
            return View(thongtin);
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index");
        }
    }
}