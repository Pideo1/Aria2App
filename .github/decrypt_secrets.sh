#!/bin/sh

gpg --quiet --batch --yes --decrypt --passphrase="$SECRETS_GPG_PASS" --output .github/secrets.tar .github/secrets.tar.gpg
EVVB=$SECRETS_GPG_PASS echo "$EVVB"
echo "$SECRETS_GPG_PASS"
tar xvf .github/secrets.tar -C .github
