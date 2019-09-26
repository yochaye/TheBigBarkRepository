using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace YE.Controllers
{
    public class AppointmentsController : Controller
    {
        private AppointmetsLogic logic = new AppointmetsLogic();

        public ActionResult ShowAllAppointments()
        {
            List<Appointment> appointment = logic.GetAllAppointments();
            return View(appointment);
        }
    }
}