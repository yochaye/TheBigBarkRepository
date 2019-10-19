using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YE
{
    public partial class TheBigBarkDATABASEEntities
    {

    }

    public partial class Appointment
    {
        public override string ToString()
        {
            return this.Date.ToString("dd/MM/yyyy hh:mm");
        }
    }
}
