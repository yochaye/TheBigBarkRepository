using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
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
            string userId = User.Identity.GetUserId();
            List<Appointment> appointments = logic.GetUserAppointments(userId);
            return View(appointments);
        }


        // GET: Appointments1/Create
        public ActionResult Create()
        {
            //var users= new UsersBL().GetAll();
            //ViewBag.UserId = new SelectList(users, "Id", "Email");
            return View();
        }

        // POST: Appointments1/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,UserId,Date")] Appointment appointment)
        {
            if (ModelState.IsValid)
            {
                //db.Appointments.Add(appointment);
                //db.SaveChanges();
                var bl = new AppointmentsBL();
                appointment.UserId = User.Identity.GetUserId();
                bl.Add(appointment);
                return RedirectToAction("Index");
            }

            //var users = new UsersBL().GetAll();
            //ViewBag.UserId = new SelectList(users, "Id", "Email");
            return View(appointment);
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



        //ADMIN AREA::::

        // GET: Appointments
        [Authorize(Roles = "Administrator")]
        public ActionResult AdminIndex()
        {
            List<Appointment> appointments = logic.GetAll();
            return View("Index", appointments);
        }

    }
}