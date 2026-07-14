using Microsoft.Kiota.Abstractions.Authentication;

namespace Octochris;

public class PersonalAccessTokenProvider : IAccessTokenProvider
{
    private readonly string _token;
    public AllowedHostsValidator AllowedHostsValidator => new();
    
    public PersonalAccessTokenProvider(string token)
    {
        ArgumentException.ThrowIfNullOrWhiteSpace(token);
        _token = token;
    }
    
    public Task<string> GetAuthorizationTokenAsync(
        Uri uri, 
        Dictionary<string, object>? additionalAuthenticationContext = null,
        CancellationToken cancellationToken = default)
    {
        return Task.FromResult(_token);
    }
}
