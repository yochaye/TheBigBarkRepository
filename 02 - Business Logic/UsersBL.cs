using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using YE;

namespace YE
{
    public class UsersBL : BaseLogic
    {
        public List<AspNetUser> GetAll()
        {
            return DB.AspNetUsers.ToList();
        }

        public AspNetUser Get(string id)
        {
            //return DB.AspNetUsers.Single(item => item.Id == id);
            return DB.AspNetUsers.Find(id);
        }

        public void Remove(string userID)
        {
            //gets the user to delete.
            var dbUserToDelete = DB.AspNetUsers.Find(userID);

            //delete all appointments of the given user.
            var dbAppointmentsToDelete = DB.Appointments.RemoveRange(dbUserToDelete.Appointments);

            //delete the user
            DB.AspNetUsers.Remove(dbUserToDelete);
            DB.SaveChanges();
        }
    }
}