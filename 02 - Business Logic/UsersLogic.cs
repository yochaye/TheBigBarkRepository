using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YE
{
    public class UsersLogic : BaseLogic
    {
        public List<User> GetAllUsers()
        {
            return DB.Users.ToList();
        }

        public User GetOneUser(int userID)
        {
            return DB.Users.FirstOrDefault(u => u.UserID == userID);
        }
    }
}
