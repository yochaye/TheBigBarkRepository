using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using YE;

namespace _04___TheBigBark_WebUI.Controllers
{
    [Authorize(Roles = "Administrators")]
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            //List<AspNetUser> x = new List<YE.AspNetUser>()
            //{
            //    new AspNetUser() {Email = "ori"}
            //};
            var bl = new UsersBL();
            return View(bl.GetAll());
        }
    }
}