public interface IAuthService
{
    Task<string> GenerateToken(User user);
    Task<bool> ValidateCredentials(string username, string password);
}

public class AuthService : IAuthService
{
    // Implementation details will be added later
}