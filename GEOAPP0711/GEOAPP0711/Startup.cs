using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GEOAPP0711.Startup))]
namespace GEOAPP0711
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
