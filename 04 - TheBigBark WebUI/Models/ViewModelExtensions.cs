using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YE;

namespace _04___TheBigBark_WebUI.Models
{
    public static class ViewModelExtensions
    {
        public static UserModel ToView(this AspNetUser db)
        {
            return new UserModel(db);
        }
        public static AppointmentModel ToView(this Appointment db)
        {
            return new AppointmentModel(db);
        }

        public static AppointmentModel ToView(this SelectAllAppointments_Result db)
        {
            return new AppointmentModel(db);
        }


        //helpers
        public static List<TResult> ToSelectedList<TSource, TResult>(this IEnumerable<TSource> source, Func<TSource, TResult> selector)
        {
            return source.Select(selector).ToList();
        }
    }
}