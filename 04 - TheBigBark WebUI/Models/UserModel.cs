using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YE;

namespace _04___TheBigBark_WebUI.Models
{
    public class UserModel
    {
        public string Id { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string UserName { get; set; }
        public string Appointments { get; set; }   //csv

        public UserModel()
        {
            
        }

        public UserModel(AspNetUser db)     //from db
        {
            Id = db.Id;
            Email = db.Email;
            PhoneNumber = db.PhoneNumber;
            UserName = db.UserName;
            Appointments = string.Join(",", db.Appointments.Select(item => item.ToString()));
        }
    }
}