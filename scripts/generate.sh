#!/bin/bash

DESCRIPTION_URL="https://raw.githubusercontent.com/github/rest-api-description/main/descriptions/ghec/ghec.yaml"
API_DESCRIPTION_URL="https://raw.githubusercontent.com/github/rest-api-description/main/descriptions/api.github.com/api.github.com.yaml"

kiota generate \
  -l CSharp \
  -c GitHubEnterpriseCloudClient \
  -n GitHub.EnterpriseCloud \
  -d "$DESCRIPTION_URL" \
  -o ./src/Octochris/GitHubEnterpriseCloud \
  --disable-validation-rules KnownAndNotSupportedFormats

kiota generate \
  -l CSharp \
  -c GitHubApiClient \
  -n GitHub.Api \
  -d "$API_DESCRIPTION_URL" \
  -o ./src/Octochris/GitHubApi \
  --disable-validation-rules KnownAndNotSupportedFormats
