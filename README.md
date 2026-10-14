# Pipeline test

GitHub pipeline to build an RPM package.

## GPG Key pair for package signing

Generate a key pair, ideally in an empty host / user / container:

```bash
gpg --gen-key
```
```
Real name: Package Pipeline Test
Email address: support@adfinis.com
```

Export your key:

```bash
gpg --export-secret-keys --armor "Package Pipeline Test <support@adfinis.com>"
```

In the GitHub Repo, go to *Settings*, *Secrets and variables*, *Actions*,
click *New repository secret*:

* Name `GPG` and the Base64 from above
* Name `GPG_PASSPHRASE` and the passphrase from above

Export the public key:

```bash
gpg --export --armor "Package Pipeline Test <support@adfinis.com>"
```

This one is needed to validate the packages.

