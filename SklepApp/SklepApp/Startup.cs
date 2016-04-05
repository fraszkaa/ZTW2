using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SklepApp.Startup))]
namespace SklepApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
