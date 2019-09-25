using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace YE.Controllers
{
    public class UsersController : Controller
    {
        private UsersLogic logic = new UsersLogic();
             
        public ActionResult ShowAllUsers()
        {
            List<User> users = logic.GetAllUsers();
            return View(users);
        }
    }
}