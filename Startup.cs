using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPHosp.Startup))]
namespace ASPHosp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
        
    }
}
