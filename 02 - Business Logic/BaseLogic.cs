using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace YE
{
    public abstract class BaseLogic : IDisposable
    {
        protected TheBigBarkDATABASEEntities DB = new TheBigBarkDATABASEEntities();

        public void Dispose()
        {
            DB.Dispose();
        }
    }
}
