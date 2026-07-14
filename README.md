# Octochris

Octochris is a Kiota-generated .NET client package for the GitHub REST APIs.

This package includes clients for:

- GitHub.com REST API (`GitHub.Api` namespace)
- GitHub Enterprise Cloud REST API (`GitHub.EnterpriseCloud` namespace)

## Installing

```powershell
dotnet add package Octochris
```

## Getting started

```csharp
using GitHub.Api;
using GitHub.EnterpriseCloud;
using Microsoft.Kiota.Http.HttpClientLibrary;
using Octochris;

var tokenProvider = new PersonalAccessTokenProvider("<your-token>");
var authProvider = new PersonalAccessTokenAuthenticationProvider(tokenProvider);
var requestAdapter = new HttpClientRequestAdapter(authProvider);

// GitHub.com client
var githubApi = new GitHubApiClient(requestAdapter);
var root = await githubApi.GetAsync();

// GitHub Enterprise Cloud client
var ghecApi = new GitHubEnterpriseCloudClient(requestAdapter);
var ghecRoot = await ghecApi.GetAsync();
```

## Authentication

The package includes helpers for Personal Access Token (PAT) authentication:

- `Octochris.PersonalAccessTokenProvider`
- `Octochris.PersonalAccessTokenAuthenticationProvider`

Use a token with the minimum scopes required by the endpoints you call.

## Notes

- The SDK is generated from the official GitHub REST API descriptions.
- Generated surface area can change when GitHub updates its API description.
- Strongly typed request builders are available under both namespaces.

## Source and updates

The API clients in this package are regenerated from upstream API descriptions as part of this repository's automation workflow.
