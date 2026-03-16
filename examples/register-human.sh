#!/usr/bin/env bash
# Beta waitlist registration — human actor type

curl https://kubbi.ai/api/v1/beta/register \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "actor_type": "human",
    "actor_email": "developer@example.com",
    "use_case": "coordinating ephemeral credentials across CI/CD pipeline stages"
  }'
