using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _04___TheBigBark_WebUI.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            //public
            if (!User.Identity.IsAuthenticated)
            {
                return View("PublicIndex");
            }

            //admin
            if (User.IsInRole("Administrators"))
            {
                return View("AdminIndex");
            }

            //normal user
            return View("Index");
        }

      
        [Route("Home/About")]
        public ActionResult About()
        {
            ViewBag.Message = "TheBig Bark is a barber shop for animals the best in town.";

            return View();
        }

        [Route("Home/Contact")]
        public ActionResult Contact()
        {
            ViewBag.Message = "contact the big bark manager.";

            return View();
        }



        //ADMIN AREA::::
        //[Authorize(Roles = "Administrator")]
        //public ActionResult AdminIndex()
        //{
        //    return
        //}

    }
}