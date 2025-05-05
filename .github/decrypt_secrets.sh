#!/bin/sh

gpg --quiet --batch --yes --decrypt --passphrase="$SECRETS_GPG_PASS" --output .github/secrets.tar .github/secrets.tar.gpg
echo "$SECRETS_GPG_PASS"
tar xvf .github/secrets.tar -C .github
