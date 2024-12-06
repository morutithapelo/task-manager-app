public class UserController : ControllerBase
{
    private readonly IAuthService _authService;

    public UserController(IAuthService authService)
    {
        _authService = authService;
    }

    [HttpPost("register")]
    public async Task<IActionResult> Register(RegisterModel model)
    
    

    [HttpPost("login")]
    public async Task<IActionResult> Login(LoginModel model)
     
    
  
}
}