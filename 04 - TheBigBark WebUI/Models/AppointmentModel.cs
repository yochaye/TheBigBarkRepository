using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using YE;

namespace _04___TheBigBark_WebUI.Models
{
    public class AppointmentModel
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public System.DateTime Date { get; set; }


        public AppointmentModel()
        {

        }

        public AppointmentModel(Appointment db)    //from db
        {
            Id = db.Id;
            UserId = db.UserId;
            UserName = db.AspNetUser.UserName;
            Date = db.Date;
        }
    }
}