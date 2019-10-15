using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using YE;

namespace _04___TheBigBark_WebUI.Controllers
{
    public class AppointmentsController : Controller
    {

        private AppointmentsBL logic = new AppointmentsBL();




        // GET: Appointments
        [Authorize()]
        public ActionResult Index()
        {
            List<Appointment> appointments = logic.GetAll();
            return View(appointments);
        }



        [Authorize()]
        public ActionResult Delete(int id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Appointment appointment = new AppointmentsBL().Get(id);
            if (appointment == null)
            {
                return HttpNotFound();
            }

            return View(appointment);
        }

        [Authorize()]
        [HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AppointmentsBL appointmentsBl = new AppointmentsBL();
            appointmentsBl.Remove(id);
            return RedirectToAction("Index");
        }
    }
}