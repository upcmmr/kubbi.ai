#!/usr/bin/env bash
# Beta waitlist registration — agent actor type

curl https://kubbi.ai/api/v1/beta/register \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "actor_type": "agent",
    "actor_email": "operator@example.com",
    "use_case": "temporary secret and object exchange between workflow steps"
  }'
