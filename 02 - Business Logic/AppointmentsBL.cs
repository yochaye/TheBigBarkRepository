using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace YE
{
    public class AppointmentsBL : BaseLogic
    {
        public List<Appointment> GetAll()
        {
            return DB.Appointments
                .Include(item => item.AspNetUser)
                .ToList();
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
