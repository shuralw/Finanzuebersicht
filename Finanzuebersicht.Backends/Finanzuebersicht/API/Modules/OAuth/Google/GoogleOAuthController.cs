using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Finanzuebersicht.API.Modules.OAuth.Google
{
    [Route("myuserapp")]

    public class AuthController : Controller
    {
        [HttpGet("{id}")]
        [Authorize]
        public ActionResult<string> Get(int id)
        {
            return this.User.Identity.Name;
        }
    }
}