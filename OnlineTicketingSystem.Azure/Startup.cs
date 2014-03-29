using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OnlineTicketingSystem.Azure.Startup))]
namespace OnlineTicketingSystem.Azure
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            //ConfigureAuth(app);
        }
    }
}
