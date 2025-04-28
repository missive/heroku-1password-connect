# 1Password Connect single-container deployment

A wrapper to run both connect-api and connect-sync in one ECS task, circumventing the awkward conflicting use of the OP_HTTP_PORT variable in both images. This makes deploying 1Password Connect through Ma a breeze.

## Configuration

* `OP_SESSION` - Must be passed as an ENV var, ideally as a secret in Parameter Store.
