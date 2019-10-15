using System;
using System.Data.Entity;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace _04___TheBigBark_WebUI.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit https://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);


            // Add custom user claims here
            return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }

        public static ApplicationDbContext Create()
        {
            var context= new ApplicationDbContext();

            const string usersRole = "Users";
            const string adminsRole= "Administrators";

            // This check for the role before attempting to add it.
            if (!context.Roles.Any(r => r.Name == usersRole))
            {
                context.Roles.Add(new IdentityRole(usersRole));
                context.SaveChanges();
            }


            // This check for the role before attempting to add it.
            if (!context.Roles.Any(r => r.Name == adminsRole))
            {
                context.Roles.Add(new IdentityRole(adminsRole));
                context.SaveChanges();
            }



            //const string defaultRole = "admin";
            //const string defaultUser = "someUser";

            //// This check for the role before attempting to add it.
            //if (!context.Roles.Any(r => r.Name == defaultRole))
            //{
            //    context.Roles.Add(new IdentityRole(defaultRole));
            //    context.SaveChanges();
            //}

            //// This check for the user before adding them.
            //if (!context.Users.Any(u => u.UserName == defaultUser))
            //{
            //    var store = new UserStore<ApplicationUser>(context);
            //    var manager = new UserManager<ApplicationUser>(store);
            //    var user = new ApplicationUser { UserName = defaultUser };
            //    manager.Create(user, "somePassword");

            //    manager.AddToRole(user.Id, defaultRole);
            //}
            //else
            //{
            //    // Just for good measure, this adds the user to the role if they already
            //    // existed and just weren't in the role.
            //    var user = context.Users.Single(u => u.UserName.Equals(defaultUser, StringComparison.CurrentCultureIgnoreCase));
            //    var store = new UserStore<ApplicationUser>(context);
            //    var manager = new UserManager<ApplicationUser>(store);
            //    manager.AddToRole(user.Id, defaultRole);
            //}

            return context;

        }
    }
}