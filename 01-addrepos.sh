#!/bin/bash

### Add Botic repository
if ! grep repo.ieero.com/botic /etc/apt/sources.list; then
	cat >> /etc/apt/sources.list <<EOT

## Botic
deb http://repo.ieero.com/botic jessie main
#deb-src http://repo.ieero.com/botic jessie main
EOT
fi

### Increase priority to Botic packages
cat > /etc/apt/preferences.d/botic <<EOT
Package: *
Pin: release o=Botic
Pin-Priority: 700
EOT

### Add Botic signing key
cat <<EOT | apt-key add -
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v2.0.14 (GNU/Linux)

mQINBFcc8+IBEAC7w+XIPVe6BRricAAjCOxMja6pD/oO8dVhguh03iEBHkv+VRyJ
VZH/iWtG2aaAFN/BbNLDYft7zfXet/Usg23XQhvBAWjDKu4q6sHiuWZJtsSyszux
JDMrA4ZNeojNT9FcmZs7anitAOHYfNHdU9lfeCItBp7BPAG4do5QLe83gE87QuJX
GLGFFOCypKx1bzwD0JmPdkrbogauu3c/qZ80bM7oM5SgkTUJvnDJFmtFEwCk1sZP
P1P4TgpeL5q50gLFLPeh9+To+NrGw4oyIo2VQdx0KKC/PNnJImOtLF30YBgsDreA
CSP0LPJgpPmbBoV2S8qMGxpgUJZiRm0JYWuFYeTLl1DSzJrSLrYuQ43UGPic1FoU
amtFM9FeC6LTKx3lgXjCHMnh2F7E1FiNtFGeMup6vjJNaOnnkiXVrAPIbLFL/XGk
RsC59RGtzycrtdjtG5xtVv4N5ISTY6QOGqC1qhyYm9EhWMVp0IzHkzDf82D8+61K
PJKTdJ43DWqd18bTJrF1We6v/B0czfJospVvZsNf299xydA9XpRt9p9NhmNQlxUp
lF7jRU+8viKfKfJc4CARmkPzxoevBgtseTDJfEJY+amvzM+9GvBatQRl7RVIz4ae
kTBPbcZddDv3iod5O2bujDj8y528p1xBk+NdW7pidLigGh6ecZU/5I9gUQARAQAB
tDZNaXJvc2xhdiBSdWRpc2luIChCb3RpYyBzaWduaW5nIGtleSkgPG1pZXJvQHNl
em5hbS5jej6JAj4EEwECACgFAlcc8+ICGwMFCQHhM4AGCwkIBwMCBhUIAgkKCwQW
AgMBAh4BAheAAAoJEC0w/Nqg5X6XCrkP/iERtgvQpjV+qS/7HKSdFIlAu6bE3n1N
eztvxhJmN5Z3X0RsDo059cDt0VKUp2c3aZMVeGi8//EudOU/r1GQ7jIReclbpd2U
QGwCLbnhPmQpgrwlsGuTg2NL+MikUpFSslBRZ/3AkdVs7Ju/nVyQRJDeMCMvt45z
cVkKpHs882iIVdPGG7/snucji8l8D8HQRyipbt3fKpIpw93xizh1ek38LgTKVDl3
Z/qCBVxn4/rgrP9AvxpdwxP+636aXxNy7xSiSWLMGjte+Xpu6qWYlPTfPqTuTCSf
iJ3hs9IoDI+LRiu/Hf+QlyPaLZr8oAWAWogUNQeTD/FX7xLI4IRBO6TvyXoD8BA2
HrXzqpTjZ/mejlyDTnKraVqAzwo6r4KxmaxCZ/brV0wJ4fW4zJpuD2cRAgHBT7xt
QiIkzsSiQ0CgUk2vlxbAzGetczwcEsnYVaXbpXZPsL2FFObRD6WCuoLlovbPHoCP
JMflDxD4PqWXLgR2O16FjUxSB/aelDMYdjg8gwMIIyasCJFQG+7El65x4ElGuJEF
nhEdU94GoVAKGPHdq9U1f9WhNdlBlh3e628To31WV0Y6DBJjPhMRp8tNpe/DmBBZ
+JYWrnZ3Yqpk0KQak7m5K49RAIAQ3RpuoVVSvA6iA+I44vDkf2SX6y4272s1LiBu
2GMsSYoshlJF
=9R4q
-----END PGP PUBLIC KEY BLOCK-----
EOT

apt-get update
apt-get dist-upgrade
