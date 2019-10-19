using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data.Entity.Core.Objects;

namespace YE
{
    public class AppointmentsBL : BaseLogic
    {
        public List<SelectAllAppointments_Result> GetAll()
        {
            ObjectResult<SelectAllAppointments_Result> x = DB.SelectAllAppointments();
            return x.ToList();
        }

        public Appointment Get(int id)
        {
            return DB.Appointments.Find(id);
        }

        public List<Appointment> GetUserAppointments(string userId)
        {
            return DB.Appointments
                .Include(item => item.AspNetUser)
                .Where(item => item.UserId == userId)
                .ToList();
        }


        public void Add(Appointment appointment)
        {
            DB.Appointments.Add(appointment);
            DB.SaveChanges();
        }

        public void Remove(int appointmentID)
        {
            var dbAppointmentToDelete = DB.Appointments.Find(appointmentID);
            DB.Appointments.Remove(dbAppointmentToDelete);
            DB.SaveChanges();
        }
    }
}
