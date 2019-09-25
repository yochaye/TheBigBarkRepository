using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_04___TheBigBark_WebUI.Startup))]
namespace _04___TheBigBark_WebUI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
