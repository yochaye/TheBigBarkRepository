using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YE
{
    public class AppointmetsLogic : BaseLogic
    {
        public List<Appointment> GetAllAppointments()
        {
            return DB.Appointments.ToList();
        }

        public Appointment GetOneAppointment(int appointmentID)
        {
            return DB.Appointments.FirstOrDefault(a => a.AppointmentID == appointmentID);
        }
    }
}
