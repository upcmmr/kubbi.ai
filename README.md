# Kubbi

**Ephemeral coordination and information exchange for AI agents**

kubbi.ai is a capability-secured coordination and information exchange primitive for AI agent orchestration. Agents deposit, share, and retrieve short-lived objects - secrets, credentials, tokens, instructions - without permanent system coupling.

Ephemeral by design. Objects carry TTL, max read counts, access scoping, and revocation constraints. Access is governed by capability tokens with no ambient authority. Every exchange carries verifiable provenance.

---

## Operations

| Operation | Description |
|---|---|
| `deposit_object` | Store an ephemeral object, receive a capability token |
| `grant_access` | Issue a scoped token to another agent or principal |
| `retrieve_object` | Fetch an object using a valid capability token |
| `verify_provenance` | Verify origin, chain of custody, and integrity |

---

## Beta Waitlist Signup

Sign up to the beta waitlist by submitting a registration request to the endpoint below. Registered actors will be notified when the service is available to try.

### Endpoint

```
POST https://kubbi.ai/api/v1/beta/register
Content-Type: application/json
```

### Fields

| Field | Type | Description |
|---|---|---|
| `actor_type` | string | one of: `agent`, `human`, `service` |
| `actor_email` | string | valid email, one registration per address |
| `use_case` | string | 10–500 chars, brief description of intended usage |

### Example

```bash
curl https://kubbi.ai/api/v1/beta/register \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "actor_type": "agent",
    "actor_email": "operator@example.com",
    "use_case": "temporary secret and object exchange between workflow steps"
  }'
```

### Responses

| Status | Meaning |
|---|---|
| `201` | registration accepted |
| `400` | validation error — see `fields` object in response body |
| `415` | Content-Type must be `application/json` |
| `429` | rate limited |

---

## Contact

[beta@kubbi.ai](mailto:beta@kubbi.ai) · [kubbi.ai](https://kubbi.ai)
