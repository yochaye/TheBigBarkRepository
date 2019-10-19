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
        public List<SelectAllAppointments_Result> GetAll(DateTime? sDate = null, DateTime? eDate = null, string name = null)
        {
            var all = DB.SelectAllAppointments();

            if (sDate == null && eDate == null && name == null)   //no filter
            {
                return all.ToList();
            }

            var res = all.AsEnumerable();

            if (sDate != null)   //filter by start date
                res = res.Where(item => item.Date >= sDate);

            if (eDate != null)    //filter by end date
                res = res.Where(item => item.Date <= eDate);

            if (name != null) //filter by name
            {
                var lName = name.ToLower();
                res = res.Where(item => (item.FirstName != null && item.FirstName.ToLower().Contains(lName)) ||
                                        (item.LastName != null && item.LastName.ToLower().Contains(lName)));
            }

            return res.ToList();
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
