using LeDangQuang_CaiDatLayout.Areas.Admin.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PagedList;
using System.Data.Entity;

namespace LeDangQuang_CaiDatLayout.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        private VnBook b = new VnBook();
        // GET: Admin/Home
        public ActionResult Index()
        {
            if (Session["idUser"] != null)
            {
                return View();
            }
            else
            {
               return RedirectToAction("DangNhap");
            }    
        }
        public ActionResult QLTacGia(int? page)
        {
            var tacgia = b.TacGias.Select(tg => tg);
            tacgia = tacgia.OrderByDescending(tg => tg.MaTG);
            int pageSize = 3;
            int pageNumber = (page ?? 1);
            return View(tacgia.ToPagedList(pageNumber,pageSize));
        }
        [HttpGet]
        public ActionResult ThemTacGia()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ThemTacGia([Bind(Include = "MaTG,HoTen,NgaySinh,TieuSu,QueQuan,Anh")] TacGia tacGia)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    tacGia.Anh = "";
                    var f = Request.Files["Anh"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = Server.MapPath("~/Areas/Assets/images/" + FileName);
                        f.SaveAs(UploadPath);
                        tacGia.Anh = FileName;
                    }
                    b.TacGias.Add(tacGia);
                    b.SaveChanges();
                }
                return RedirectToAction("QLTacGia");
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Lỗi nhập dữ liệu ! " + ex.Message;
                return View(tacGia);
            }
        }
        [HttpGet]
        public ActionResult SuaTacGia(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TacGia tacGia = b.TacGias.Find(id);
            if (tacGia == null)
            {
                return HttpNotFound();
            }
            return View(tacGia);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SuaTacGia([Bind(Include = "MaTG,HoTen,NgaySinh,TieuSu,QueQuan,Anh")] TacGia tacGia)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var f = Request.Files["Anh"];
                    if (f != null && f.ContentLength > 0)
                    {
                        string FileName = System.IO.Path.GetFileName(f.FileName);
                        string UploadPath = Server.MapPath("~/Areas/Assets/images/" + FileName);
                        f.SaveAs(UploadPath);
                        tacGia.Anh = FileName;
                    }
                    b.Entry(tacGia).State = EntityState.Modified;
                    b.SaveChanges();
                }
                return RedirectToAction("QLTacGia");
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Lỗi nhập dữ liệu ! " + ex.Message;
                return View(tacGia);
            }
        }
        [HttpGet]
        public ActionResult XoaTacGia(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TacGia tacGia = b.TacGias.Find(id);
            if (tacGia == null)
            {
                return HttpNotFound();
            }
            return View(tacGia);
        }
        [HttpPost, ActionName("XoaTacGia")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TacGia tacGia = b.TacGias.Find(id);
            try
            {
                b.TacGias.Remove(tacGia);
                b.SaveChanges();
                return RedirectToAction("QLTacGia");
            }
            catch(Exception ex)
            {
                ViewBag.Error = "Không thể xóa bản ghi này !! " + ex.Message;
                return View("XoaTacGia", tacGia);
            }
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangNhap(string tenDN, string matkhau)
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
                    if (Convert.ToBoolean(Session["Quyen"]) == true)
                    {
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ViewBag.error = "Vui lòng đăng nhập bằng tài khoản Admin";
                        return View();
                    }
                }
                else
                {
                    ViewBag.error = "Tên đăng nhập hoặc mật khẩu không chính xác";
                }
            }
            return View();
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("DangNhap");
        }

    }
}