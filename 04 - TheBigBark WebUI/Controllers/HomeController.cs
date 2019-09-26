﻿using System;
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
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "TheBig Bark is a barber shop for animals the best in town.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "contact the big bark manager.";

            return View();
        }
    }
}