using _04___TheBigBark_WebUI.Models;
using System.Collections.Generic;
using System.Net;
using System.Web.Mvc;
using YE;

namespace _04___TheBigBark_WebUI.Controllers
{
    [Authorize()]
    public class UsersController : Controller
    {
        private UsersBL usersLogic = new UsersBL();


        //ADMIN AREA::::
        //GET: Users
        [Authorize(Roles = "Administrators")]
        public ActionResult Index()
        {
            List<AspNetUser> users = usersLogic.GetAll();
            return View(users);
        }

        [Authorize()]
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUser user = new UsersBL().Get(id);
            if (user == null)
            {
                return HttpNotFound();
            }
            return View(user);
        }

        [Authorize()]
        [HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            UsersBL users = new UsersBL();
            users.Remove(id);
            return RedirectToAction("Index");
        }
    }
}