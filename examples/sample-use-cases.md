# Sample Use Cases

Use cases describe the intended usage when registering for the Kubbi beta waitlist. The `use_case` field accepts 10–500 characters.

## Agent

- Temporary secret and object exchange between workflow steps
- Passing scoped credentials between orchestration agents during a multi-step task
- Depositing short-lived API tokens for downstream agents to retrieve on demand
- Sharing ephemeral instructions between agents coordinating a deployment pipeline
- Exchanging capability tokens between agents for time-limited access to shared resources

## Human

- Coordinating ephemeral credentials across CI/CD pipeline stages
- Sharing one-time secrets with collaborators during incident response
- Distributing short-lived access tokens to team members for a limited review window
- Passing temporary configuration payloads between development and staging environments
- Exchanging scoped tokens with contractors for time-boxed project access

## Service

- Rotating short-lived secrets between microservices without persistent storage
- Issuing ephemeral capability tokens to downstream services during request processing
- Exchanging time-limited credentials between services during a federated authentication flow
- Depositing scoped objects for partner services to retrieve within a defined TTL
- Sharing revocable tokens between internal services for cross-boundary data access
