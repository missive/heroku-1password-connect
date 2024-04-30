# 1Password Connect Heroku deployment

A wrapper to run both connect-api and connect-sync in one Heroku dyno, for deployment in private spaces.

## Configuration

* `OP_CREDENTIALS_BASE64` - base64-encoded 1password-credentials.json file. Set with `heroku config:set  OP_CREDENTIALS_BASE64=$(cat ~/Downloads/1password-credentials.json | base64)`.
