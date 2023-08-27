using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace Finanzuebersicht.API.Modules.OAuth.Google
{
    [Route("account")]
    public class AccountController : Controller
    {
        [HttpGet("login-with-google")]
        public IActionResult LoginWithGoogle()
        {
            // You can add your post-authentication redirect URL here
            string redirectUrl = Url.Action("GoogleResponse", "Account");

            var properties = new AuthenticationProperties { RedirectUri = redirectUrl };

            return Challenge(properties, "Google");
        }

        [HttpGet("google-response")]
        public async Task<IActionResult> GoogleResponse()
        {
            // Extract the user's info from the authentication response
            var result = await HttpContext.AuthenticateAsync("Cookies");

            if (result?.Succeeded != true)
            {
                return BadRequest("Authentication failed");
            }

            var claimsIdentity = (ClaimsIdentity)result.Principal.Identity;
            var emailClaim = claimsIdentity.FindFirst(ClaimTypes.Email);

            // Perform your business logic here, for example, log the email or save to DB
            // string email = emailClaim.Value;

            return Ok("Successfully authenticated");
        }
    }
}