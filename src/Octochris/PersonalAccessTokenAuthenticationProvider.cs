using Microsoft.Kiota.Abstractions.Authentication;

namespace Octochris;

public class PersonalAccessTokenAuthenticationProvider : BaseBearerTokenAuthenticationProvider
{
    public PersonalAccessTokenAuthenticationProvider(IAccessTokenProvider accessTokenProvider) : base(accessTokenProvider)
    {
    }
}
