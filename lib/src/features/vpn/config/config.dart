class VpnConfig {
  VpnConfig._();

  /*
  ##############################################################
  ################ FreeOpenVPN.Org config file #################
  ################ https://www.freeopenvpn.org #################
  ##############################################################
  */
  //The password has been changed on 20-11-2022 at 06:34 (UTC) and will be valid for at least 10 hours.
  //The next change of the password will be made no earlier than 20-11-2022 at 16:34 (UTC).
  static const String freeOpenVpnUserName = 'freeopenvpn';
  static const String freeOpenVpnPassword = '869696184';
  static const String freeOpenVpnConfigUSA = """ 
  
###############################
# FreeOpenVPN.Org config file #
# https://www.freeopenvpn.org #
###############################

setenv UV_ID a1f7538c581f497faa7ad67f1e163841
setenv UV_NAME restless-skies-4578
client
dev tun
dev-type tun
remote us1.freeopenvpn.org 12352 udp
remote-random
nobind
persist-tun
cipher AES-128-CBC
auth SHA1
verb 2
mute 3
push-peer-info
ping 10
ping-restart 60
hand-window 70
server-poll-timeout 5
reneg-sec 2592000
sndbuf 393216
rcvbuf 393216
max-routes 1000
remote-cert-tls server
comp-lzo no
auth-user-pass
key-direction 1
<ca>
-----BEGIN CERTIFICATE-----
MIIFcTCCA1mgAwIBAgIIJztVg1To4nEwDQYJKoZIhvcNAQELBQAwRjEhMB8GA1UE
CgwYNWZhMmI4OTAyMWY5MjMxYjFhZmRiMDM2MSEwHwYDVQQDDBg1ZmEyYjg5MDIx
ZjkyMzFiMWFmZGIwNDMwHhcNMjAxMTA0MTQyMDA0WhcNNDAxMDMwMTQyMDA0WjBG
MSEwHwYDVQQKDBg1ZmEyYjg5MDIxZjkyMzFiMWFmZGIwMzYxITAfBgNVBAMMGDVm
YTJiODkwMjFmOTIzMWIxYWZkYjA0MzCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCC
AgoCggIBANi1KmZL1M5CrCwRxIXxo3sMRGA/O+8l+8CVC0fDqY8UYLt3OXMgwXow
QRKKIctj1kZW/PyqLd5xsXhbD+0THJ51KAzc+9kb8U1TMrtCbajpFElnIcDmHKkb
0mBhe+mpElFA2BNk6+H+zzGlO6r2ckv/GNEHcmJ5tsudUXm68pM7yopbsMSZhkwQ
KzpIuVkbQZc7vFI61DyuRh4HtgZ/t1G8kJ4K0QJiFKj+S5kLhx8PcQWz94q+sT0/
8CPzDuEGdmc8tQ4L3d7+jRwLBTs/Ds6Y7zw2fXxRKuSLIWVgE92LtrXJMD2q8nkg
iwcgn0TUdBHyIcsYgsQE8as6jpf89t9Vdz3RE1mKqDhlsROKWr8xFn0PoT6jB4tz
vAEJ0kKPcxFAGa3MmFthuo1i1McBjogp5ENQMXUylLW9IGRaRYgZuR1h8S9O/dxC
7aEOxduBjPGp8UcZzMPzRN9oCY5O170GwYmdL250g2keyA3qavfWCx5gkmwMZfCj
SRgRv2WC73bgY0fpWl/CxrKwK1/Pwz3O/ZrUG6eEmgOwCvGpxxYjCxvlQoZ9uUwh
x5zCmTN7d67rkI9MU6F9wcxkc46hoiM9dEFVe+8GOA+AYjk9g2yA8Zl3ImLt9Gn5
HNsI1G7nObiFUikYGeJUST1qM5kNfKzJYGdSxy0U1jFxS9fnRn8lAgMBAAGjYzBh
MA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBR5dxQm
w1vb+IiO6qCPkh5fa2SBdjAfBgNVHSMEGDAWgBR5dxQmw1vb+IiO6qCPkh5fa2SB
djANBgkqhkiG9w0BAQsFAAOCAgEAJl/btMUFYhItQkAbsXXJ694+nc96f9SKDYkI
rqtHe1Fk71oFkKj9JcQ6fmd4l1vs9p0/AQoLMB1aGQ51n40sWwFN72mUv4bqiYpB
d0KAxgLw1T3CQ3K5FiER+CxLlyZNnfjxhCuotEbdBT6hcot80znG4tDwH4se2JgX
d72063D9rCMKffiKR1wc1FX5SKfkWDPAqa3QyN9dAdrpyhTyKYp2QR/ZVL7mW3ea
F4QHuks2p3f/HBbOX577D3oCwXYOe28PknfO4LcZ/heL1wqQwJLqcu7JJWSFgEeN
v+NZzAN99EJP2Z5u9TrzTOkEKI5P4MVas10zHhKOwl+KUE4tAr1bfGOtbcjk3SdY
Li17eh4tKEcI9QFIgMXzPRy1W6Eo5+yjLxl6sh4Z1mSx5AdNkl+YwzYnX5vEUjTd
u1F66HlvuA1Hhs9aGu3ABXn/5BrhmWeSlIZuDcW9S0YZVwyxToPG/1PL7fsgvz59
1CQF+dBj8AII/jjtHPr1IXuu0KTns9xii8zFEciH7j3AO//CaR9OOtgOKnwRqHXr
TA0C09X2LfbcKBr785M60U+Sum0sI6+GefRzO5xH+bPBHG3WkzR2GWHFqF1NIZAw
K448xYtNC6cN6RIXmcS6/KxLBJv2r6wLXes8DUZukvya+JYj7/8WclJLCQIWafV+
6cDjW+o=
-----END CERTIFICATE-----
</ca>
<tls-auth>
#
# 2048 bit OpenVPN static key
#
-----BEGIN OpenVPN Static key V1-----
63784d16559cf07e2d57e2f09adb33fb
9e61b63609c069b2320a844c0118a01c
a56409163167db2540e4e8c500eb7e39
4693fb9bfdb5d6e2a1c85cd50d9b6437
3b76255a8002926eec503e31ede20667
04c77d5ae9a19625efd71367f900ae52
677dc0eb8750741c38ee0913a01724c0
150212d1e8362f12778a75e71b714775
5f51723bc53e118fe67f18fecd4f4641
f7d38d768c4253f7d79332612643e54d
bb2acee60ece7a2521f5b8b1650b31df
01f13e9d4d0c6b5df02c597688035cb9
d23d0ddf83585a86eab3ecc40d62ee4a
640756d1c455656263794e98873539f7
59f4f1e76472043f568ee6afda75991a
31c39bff3c47221c33b9c1fd624e3ed7
-----END OpenVPN Static key V1-----
</tls-auth>
<cert>
-----BEGIN CERTIFICATE-----
MIIFgTCCA2mgAwIBAgIJAPKp5+VB9ahMMA0GCSqGSIb3DQEBCwUAMEYxITAfBgNV
BAoMGDVmYTJiODkwMjFmOTIzMWIxYWZkYjAzNjEhMB8GA1UEAwwYNWZhMmI4OTAy
MWY5MjMxYjFhZmRiMDQzMB4XDTIwMTEwNDE0MjAwNloXDTQwMTAzMDE0MjAwNlow
RjEhMB8GA1UECgwYNWZhMmI4OTAyMWY5MjMxYjFhZmRiMDM2MSEwHwYDVQQDDBg1
ZmEyYjg5NTIxZjkyMzFiMWFmZGIwNDUwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAw
ggIKAoICAQC2MPG3nrGfnMSAAgpfDbWnFzxMgc0HCYbUEaSwhwTzp7f1jJ/LDxQN
Xx/ihpESrpV1AuWrEMxX92iPGsjiCQO06v8doLLlUWTVK8jOtJMGJv+9n6qXyyrC
qYqTgq80evoT8ThGPIh9zbeieWkeMEQo+OdJSAYDEjG5RVnix+df4GXxkjJc8sM5
8nMhsx9yK2v7RiHGMQeAOm3mNvmfHcKr10IUK5W80p4gP22Q6iWL+DaY+LjrjOCZ
FrvwSiY/fASmITpQjIMPTuPaksdiROdaZXD3p+U28M/urzi5yk1QPwfSOp//YcgJ
o1xVdNPn/s0LGuKrLM7lpQ8XFhufNb7o6Tc9qNBf5dcbBB8OWxAV64n2V95j9ec8
/DkWMJMgtlwU4xhUD81YBKFWCqjIOH9fPp2Kh+JEmB1WI/XiSXKuk44Rqwr+NUVR
sRKtWuH0ZRMR6d4JQhKuyi98wegsmYHbt9kkjtoteo9ommYO0RwvLuN+rpbIC/Sl
/GqY+9EQTdyT+RQk0dKg5ngENtC6mGSVfDK8PPzGqMXc98/xGBoXcVKmQELVVbgu
YUzVqgT9c695PqZZ1WouzIGGzKClPb2O5bRXquD2VJhqkrSIn7eeHvdv7ke2h+Jw
PxONOrteAPrTQFhchoSfiC9W39Ol3szc4L0EOV5J56nvug+CCvKwwQIDAQABo3Iw
cDAOBgNVHQ8BAf8EBAMCBaAwCQYDVR0TBAIwADATBgNVHSUEDDAKBggrBgEFBQcD
AjAdBgNVHQ4EFgQUIyI9iRCNURRz6pYtZTVHf5Ih0pMwHwYDVR0jBBgwFoAUeXcU
JsNb2/iIjuqgj5IeX2tkgXYwDQYJKoZIhvcNAQELBQADggIBACoozM/c+DtV5eKv
cxq+28cOOy9IZtk4ezbdClettiquCZduJbnRPvG7mLElVDdbim5OAbVV7piCYaFa
F9QxEpuOUXygSSvqCIgQPkR9g9L5POqtkZDsiMWJGdk0K+XMxrNWiLJ/7Ahm/aV5
EZdpEY7jhgrBSmWR/r0lOxOA1aEIA/7eL4L/t/rjSSXqczgYsJQa1WfogWSC5Egr
Cu5lhFQOOPOfFun9iHDhWb+bgWzvfMKT+c46nV7vjFlJwRKY36v/KfLq09SBUY4P
DpIdP0pPFFeuZad1t43kHzWwSQqy03U1WkA9bp+vN9utTVatlr05eV8JKzlYkyhQ
ykiISwy1GDa+hMr4xu2hFg5HeHYtcIlb6bgW+K+ya0imgpcKcUw6hOU6gwokVuhz
qNaX647rW/kTypyxjeQxrLGxegSJYtP1Bcn/lNJDXw5KDUYkXcbKqOjA7faqACZU
TdKlbpTC+px/wPwbmEA+G7BKoZfJp2NjuR+BQHKC1Yq9WkiRgWxEw5IzHboHRgcY
helCoZxkjLWrPQN1C766NSo9dmgfwCToafD8Ylxf0zfY+WV3h/x9TZkvdaxJ7zDy
usJUuK7CQT8R5VLt7+6NPp3UsNHTxmeyE5ocCieI0SXIIDYj06IUw0A3RUjRaMyT
6Vhek32eRkcy/aSjgiWZpdGBnLxg
-----END CERTIFICATE-----
</cert>
<key>
-----BEGIN PRIVATE KEY-----
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
1O0C8AtrdmiV8WPCOiZ/Http95gBLg==
-----END PRIVATE KEY-----
</key>

  """;

  /*
  ##############################################################
  #################### VPNBOOK config file             #########
  #################### https://www.vpnbook.com/freevpn #########
  ##############################################################
  */
  static const String vpnbookUserName = 'vpnbook';
  static const String vpnbookPassword = 'twrszht';
  static const String vpnbookConfigUS1 = """ 
client
dev tun0
proto udp
remote 198.7.62.204 53
remote us1.vpnbook.com 53
resolv-retry infinite
nobind
persist-key
persist-tun
auth-user-pass
comp-lzo
verb 3
cipher AES-128-CBC
fast-io
pull
route-delay 2
redirect-gateway
<ca>
-----BEGIN CERTIFICATE-----
MIIDyzCCAzSgAwIBAgIJAKRtpjsIvek1MA0GCSqGSIb3DQEBBQUAMIGgMQswCQYD
VQQGEwJDSDEPMA0GA1UECBMGWnVyaWNoMQ8wDQYDVQQHEwZadXJpY2gxFDASBgNV
BAoTC3ZwbmJvb2suY29tMQswCQYDVQQLEwJJVDEUMBIGA1UEAxMLdnBuYm9vay5j
b20xFDASBgNVBCkTC3ZwbmJvb2suY29tMSAwHgYJKoZIhvcNAQkBFhFhZG1pbkB2
cG5ib29rLmNvbTAeFw0xMzA0MjQwNDA3NDhaFw0yMzA0MjIwNDA3NDhaMIGgMQsw
CQYDVQQGEwJDSDEPMA0GA1UECBMGWnVyaWNoMQ8wDQYDVQQHEwZadXJpY2gxFDAS
BgNVBAoTC3ZwbmJvb2suY29tMQswCQYDVQQLEwJJVDEUMBIGA1UEAxMLdnBuYm9v
ay5jb20xFDASBgNVBCkTC3ZwbmJvb2suY29tMSAwHgYJKoZIhvcNAQkBFhFhZG1p
bkB2cG5ib29rLmNvbTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAyNwZEYs6
WN+j1zXYLEwiQMShc1mHmY9f9cx18hF/rENG+TBgaS5RVx9zU+7a9X1P3r2OyLXi
WzqvEMmZIEhij8MtCxbZGEEUHktkbZqLAryIo8ubUigqke25+QyVLDIBuqIXjpw3
hJQMXIgMic1u7TGsvgEUahU/5qbLIGPNDlUCAwEAAaOCAQkwggEFMB0GA1UdDgQW
BBRZ4KGhnll1W+K/KJVFl/C2+KM+JjCB1QYDVR0jBIHNMIHKgBRZ4KGhnll1W+K/
KJVFl/C2+KM+JqGBpqSBozCBoDELMAkGA1UEBhMCQ0gxDzANBgNVBAgTBlp1cmlj
aDEPMA0GA1UEBxMGWnVyaWNoMRQwEgYDVQQKEwt2cG5ib29rLmNvbTELMAkGA1UE
CxMCSVQxFDASBgNVBAMTC3ZwbmJvb2suY29tMRQwEgYDVQQpEwt2cG5ib29rLmNv
bTEgMB4GCSqGSIb3DQEJARYRYWRtaW5AdnBuYm9vay5jb22CCQCkbaY7CL3pNTAM
BgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4GBAKaoCEWk2pitKjbhChjl1rLj
6FwAZ74bcX/YwXM4X4st6k2+Fgve3xzwUWTXinBIyz/WDapQmX8DHk1N3Y5FuRkv
wOgathAN44PrxLAI8kkxkngxby1xrG7LtMmpATxY7fYLOQ9yHge7RRZKDieJcX3j
+ogTneOl2w6P0xP6lyI6
-----END CERTIFICATE-----
</ca>
<cert>
-----BEGIN CERTIFICATE-----
MIID6DCCA1GgAwIBAgIBATANBgkqhkiG9w0BAQUFADCBoDELMAkGA1UEBhMCQ0gx
DzANBgNVBAgTBlp1cmljaDEPMA0GA1UEBxMGWnVyaWNoMRQwEgYDVQQKEwt2cG5i
b29rLmNvbTELMAkGA1UECxMCSVQxFDASBgNVBAMTC3ZwbmJvb2suY29tMRQwEgYD
VQQpEwt2cG5ib29rLmNvbTEgMB4GCSqGSIb3DQEJARYRYWRtaW5AdnBuYm9vay5j
b20wHhcNMTMwNTA2MDMyMTIxWhcNMjMwNTA0MDMyMTIxWjB4MQswCQYDVQQGEwJD
SDEPMA0GA1UECBMGWnVyaWNoMQ8wDQYDVQQHEwZadXJpY2gxFDASBgNVBAoTC3Zw
bmJvb2suY29tMQ8wDQYDVQQDEwZjbGllbnQxIDAeBgkqhkiG9w0BCQEWEWFkbWlu
QHZwbmJvb2suY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCkTM/8E+JH
CjskqMIwgYDrNCBTWZLa+qKkJjZ/rliJomTfVYwKwv1AHYYU6RHpCxS1qFp3BEKL
vQlASuzycSv1FGnNiLmg94fqzzWdmjs1XWosnLqbOwxx2Ye/1WoakSHia0pItoZk
xK7/fllm42+Qujri/ERGga5Cb/TfiP6pUQIDAQABo4IBVzCCAVMwCQYDVR0TBAIw
ADAtBglghkgBhvhCAQ0EIBYeRWFzeS1SU0EgR2VuZXJhdGVkIENlcnRpZmljYXRl
MB0GA1UdDgQWBBTDr4BCNSdOEh+Lx6+4RRK11x8XcDCB1QYDVR0jBIHNMIHKgBRZ
4KGhnll1W+K/KJVFl/C2+KM+JqGBpqSBozCBoDELMAkGA1UEBhMCQ0gxDzANBgNV
BAgTBlp1cmljaDEPMA0GA1UEBxMGWnVyaWNoMRQwEgYDVQQKEwt2cG5ib29rLmNv
bTELMAkGA1UECxMCSVQxFDASBgNVBAMTC3ZwbmJvb2suY29tMRQwEgYDVQQpEwt2
cG5ib29rLmNvbTEgMB4GCSqGSIb3DQEJARYRYWRtaW5AdnBuYm9vay5jb22CCQCk
baY7CL3pNTATBgNVHSUEDDAKBggrBgEFBQcDAjALBgNVHQ8EBAMCB4AwDQYJKoZI
hvcNAQEFBQADgYEAoDgD8mpVPnHUh7RhQziwhp8APC8K3jToZ0Dv4MYXQnzyXziH
QbewJZABCcOKYS0VRB/6zYX/9dIBogA/ieLgLrXESIeOp1SfP3xt+gGXSiJaohyA
/NLsTi/Am8OP211IFLyDLvPqZuqlh/+/GOLcMCeCrMj4RYxWstNxtguGQFc=
-----END CERTIFICATE-----
</cert>
<key>
-----BEGIN RSA PRIVATE KEY-----
MIICXAIBAAKBgQCkTM/8E+JHCjskqMIwgYDrNCBTWZLa+qKkJjZ/rliJomTfVYwK
wv1AHYYU6RHpCxS1qFp3BEKLvQlASuzycSv1FGnNiLmg94fqzzWdmjs1XWosnLqb
Owxx2Ye/1WoakSHia0pItoZkxK7/fllm42+Qujri/ERGga5Cb/TfiP6pUQIDAQAB
AoGANX508WQf9nVUUFlJ8LUZnnr4U2sEr5uPPNbcQ7ImTZm8MiMOV6qo/ikesMw5
8qCS+5p26e1PJWRFENPUVhOW9c07z+nRMyHBQzFnNAFD7TiayjNk1gz1oIXarceR
edNGFDdWCwXh+nJJ6whbQn9ioyTg9aqScrcATmHQxTit0GECQQDR5FmwC7g0eGwZ
VHgSc/bZzo0q3VjNGakrA2zSXWUWrE0ybBm2wJNBYKAeskzWxoc6/gJa8mKEU+Vv
ugGb+J/tAkEAyGSEmWROUf4WX5DLl6nkjShdyv4LAQpByhiwLjmiZL7F4/irY4fo
ct2Ii5uMzwERRvHjJ7yzJJic8gkEca2adQJABxjZj4JV8DBCN3kLtlQFfMfnLhPd
9NFxTusGuvY9fM7GrXXKSMuqLwO9ZkxRHNIJsIz2N20Kt76+e1CmzUdS4QJAVvbQ
WKUgHBMRcI2s3PecuOmQspxG+D+UR3kpVBYs9F2aEZIEBuCfLuIW9Mcfd2I2NjyY
4NDSSYp1adAh/pdhVQJBANDrlnodYDu6A+a4YO9otjd+296/T8JpePI/KNxk7N0A
gm7SAhk379I6hr5NXdBbvTedlb1ULrhWV8lpwZ9HW2k=
-----END RSA PRIVATE KEY-----
</key>

""";

  static const String vpnbookConfigUS2 = """ 
client
dev tun0
proto udp
remote 198.7.58.147 53
remote us2.vpnbook.com 53
resolv-retry infinite
nobind
persist-key
persist-tun
auth-user-pass
comp-lzo
verb 3
cipher AES-128-CBC
fast-io
pull
route-delay 2
redirect-gateway
<ca>
-----BEGIN CERTIFICATE-----
MIIDyzCCAzSgAwIBAgIJAKRtpjsIvek1MA0GCSqGSIb3DQEBBQUAMIGgMQswCQYD
VQQGEwJDSDEPMA0GA1UECBMGWnVyaWNoMQ8wDQYDVQQHEwZadXJpY2gxFDASBgNV
BAoTC3ZwbmJvb2suY29tMQswCQYDVQQLEwJJVDEUMBIGA1UEAxMLdnBuYm9vay5j
b20xFDASBgNVBCkTC3ZwbmJvb2suY29tMSAwHgYJKoZIhvcNAQkBFhFhZG1pbkB2
cG5ib29rLmNvbTAeFw0xMzA0MjQwNDA3NDhaFw0yMzA0MjIwNDA3NDhaMIGgMQsw
CQYDVQQGEwJDSDEPMA0GA1UECBMGWnVyaWNoMQ8wDQYDVQQHEwZadXJpY2gxFDAS
BgNVBAoTC3ZwbmJvb2suY29tMQswCQYDVQQLEwJJVDEUMBIGA1UEAxMLdnBuYm9v
ay5jb20xFDASBgNVBCkTC3ZwbmJvb2suY29tMSAwHgYJKoZIhvcNAQkBFhFhZG1p
bkB2cG5ib29rLmNvbTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAyNwZEYs6
WN+j1zXYLEwiQMShc1mHmY9f9cx18hF/rENG+TBgaS5RVx9zU+7a9X1P3r2OyLXi
WzqvEMmZIEhij8MtCxbZGEEUHktkbZqLAryIo8ubUigqke25+QyVLDIBuqIXjpw3
hJQMXIgMic1u7TGsvgEUahU/5qbLIGPNDlUCAwEAAaOCAQkwggEFMB0GA1UdDgQW
BBRZ4KGhnll1W+K/KJVFl/C2+KM+JjCB1QYDVR0jBIHNMIHKgBRZ4KGhnll1W+K/
KJVFl/C2+KM+JqGBpqSBozCBoDELMAkGA1UEBhMCQ0gxDzANBgNVBAgTBlp1cmlj
aDEPMA0GA1UEBxMGWnVyaWNoMRQwEgYDVQQKEwt2cG5ib29rLmNvbTELMAkGA1UE
CxMCSVQxFDASBgNVBAMTC3ZwbmJvb2suY29tMRQwEgYDVQQpEwt2cG5ib29rLmNv
bTEgMB4GCSqGSIb3DQEJARYRYWRtaW5AdnBuYm9vay5jb22CCQCkbaY7CL3pNTAM
BgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4GBAKaoCEWk2pitKjbhChjl1rLj
6FwAZ74bcX/YwXM4X4st6k2+Fgve3xzwUWTXinBIyz/WDapQmX8DHk1N3Y5FuRkv
wOgathAN44PrxLAI8kkxkngxby1xrG7LtMmpATxY7fYLOQ9yHge7RRZKDieJcX3j
+ogTneOl2w6P0xP6lyI6
-----END CERTIFICATE-----
</ca>
<cert>
-----BEGIN CERTIFICATE-----
MIID6DCCA1GgAwIBAgIBATANBgkqhkiG9w0BAQUFADCBoDELMAkGA1UEBhMCQ0gx
DzANBgNVBAgTBlp1cmljaDEPMA0GA1UEBxMGWnVyaWNoMRQwEgYDVQQKEwt2cG5i
b29rLmNvbTELMAkGA1UECxMCSVQxFDASBgNVBAMTC3ZwbmJvb2suY29tMRQwEgYD
VQQpEwt2cG5ib29rLmNvbTEgMB4GCSqGSIb3DQEJARYRYWRtaW5AdnBuYm9vay5j
b20wHhcNMTMwNTA2MDMyMTIxWhcNMjMwNTA0MDMyMTIxWjB4MQswCQYDVQQGEwJD
SDEPMA0GA1UECBMGWnVyaWNoMQ8wDQYDVQQHEwZadXJpY2gxFDASBgNVBAoTC3Zw
bmJvb2suY29tMQ8wDQYDVQQDEwZjbGllbnQxIDAeBgkqhkiG9w0BCQEWEWFkbWlu
QHZwbmJvb2suY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCkTM/8E+JH
CjskqMIwgYDrNCBTWZLa+qKkJjZ/rliJomTfVYwKwv1AHYYU6RHpCxS1qFp3BEKL
vQlASuzycSv1FGnNiLmg94fqzzWdmjs1XWosnLqbOwxx2Ye/1WoakSHia0pItoZk
xK7/fllm42+Qujri/ERGga5Cb/TfiP6pUQIDAQABo4IBVzCCAVMwCQYDVR0TBAIw
ADAtBglghkgBhvhCAQ0EIBYeRWFzeS1SU0EgR2VuZXJhdGVkIENlcnRpZmljYXRl
MB0GA1UdDgQWBBTDr4BCNSdOEh+Lx6+4RRK11x8XcDCB1QYDVR0jBIHNMIHKgBRZ
4KGhnll1W+K/KJVFl/C2+KM+JqGBpqSBozCBoDELMAkGA1UEBhMCQ0gxDzANBgNV
BAgTBlp1cmljaDEPMA0GA1UEBxMGWnVyaWNoMRQwEgYDVQQKEwt2cG5ib29rLmNv
bTELMAkGA1UECxMCSVQxFDASBgNVBAMTC3ZwbmJvb2suY29tMRQwEgYDVQQpEwt2
cG5ib29rLmNvbTEgMB4GCSqGSIb3DQEJARYRYWRtaW5AdnBuYm9vay5jb22CCQCk
baY7CL3pNTATBgNVHSUEDDAKBggrBgEFBQcDAjALBgNVHQ8EBAMCB4AwDQYJKoZI
hvcNAQEFBQADgYEAoDgD8mpVPnHUh7RhQziwhp8APC8K3jToZ0Dv4MYXQnzyXziH
QbewJZABCcOKYS0VRB/6zYX/9dIBogA/ieLgLrXESIeOp1SfP3xt+gGXSiJaohyA
/NLsTi/Am8OP211IFLyDLvPqZuqlh/+/GOLcMCeCrMj4RYxWstNxtguGQFc=
-----END CERTIFICATE-----
</cert>
<key>
-----BEGIN RSA PRIVATE KEY-----
MIICXAIBAAKBgQCkTM/8E+JHCjskqMIwgYDrNCBTWZLa+qKkJjZ/rliJomTfVYwK
wv1AHYYU6RHpCxS1qFp3BEKLvQlASuzycSv1FGnNiLmg94fqzzWdmjs1XWosnLqb
Owxx2Ye/1WoakSHia0pItoZkxK7/fllm42+Qujri/ERGga5Cb/TfiP6pUQIDAQAB
AoGANX508WQf9nVUUFlJ8LUZnnr4U2sEr5uPPNbcQ7ImTZm8MiMOV6qo/ikesMw5
8qCS+5p26e1PJWRFENPUVhOW9c07z+nRMyHBQzFnNAFD7TiayjNk1gz1oIXarceR
edNGFDdWCwXh+nJJ6whbQn9ioyTg9aqScrcATmHQxTit0GECQQDR5FmwC7g0eGwZ
VHgSc/bZzo0q3VjNGakrA2zSXWUWrE0ybBm2wJNBYKAeskzWxoc6/gJa8mKEU+Vv
ugGb+J/tAkEAyGSEmWROUf4WX5DLl6nkjShdyv4LAQpByhiwLjmiZL7F4/irY4fo
ct2Ii5uMzwERRvHjJ7yzJJic8gkEca2adQJABxjZj4JV8DBCN3kLtlQFfMfnLhPd
9NFxTusGuvY9fM7GrXXKSMuqLwO9ZkxRHNIJsIz2N20Kt76+e1CmzUdS4QJAVvbQ
WKUgHBMRcI2s3PecuOmQspxG+D+UR3kpVBYs9F2aEZIEBuCfLuIW9Mcfd2I2NjyY
4NDSSYp1adAh/pdhVQJBANDrlnodYDu6A+a4YO9otjd+296/T8JpePI/KNxk7N0A
gm7SAhk379I6hr5NXdBbvTedlb1ULrhWV8lpwZ9HW2k=
-----END RSA PRIVATE KEY-----
</key>

""";

/*
  ##############################################################
  ################# FREEVPN724 config file      ################
  ################# https://www.freevpn724.com/ ################
  ##############################################################
  */
  static const String freevpn724UserName = 'freevpn724';
  static const String freevpn724Password = 'u5tf696';
  static const String freevpn724ConfigUS = """ 
###############################################################################
# OpenVPN 2.0 Sample Configuration File
# for PacketiX VPN / SoftEther VPN Server
# 
# !!! AUTO-GENERATED BY SOFTETHER VPN SERVER MANAGEMENT TOOL !!!
# 
# !!! YOU HAVE TO REVIEW IT BEFORE USE AND MODIFY IT AS NECESSARY !!!
# 
# This configuration file is auto-generated. You might use this config file
# in order to connect to the PacketiX VPN / SoftEther VPN Server.
# However, before you try it, you should review the descriptions of the file
# to determine the necessity to modify to suitable for your real environment.
# If necessary, you have to modify a little adequately on the file.
# For example, the IP address or the hostname as a destination VPN Server
# should be confirmed.
# 
# Note that to use OpenVPN 2.0, you have to put the certification file of
# the destination VPN Server on the OpenVPN Client computer when you use this
# config file. Please refer the below descriptions carefully.


###############################################################################
# Specify the type of the layer of the VPN connection.
# 
# To connect to the VPN Server as a "Remote-Access VPN Client PC",
#  specify 'dev tun'. (Layer-3 IP Routing Mode)
#
# To connect to the VPN Server as a bridging equipment of "Site-to-Site VPN",
#  specify 'dev tap'. (Layer-2 Ethernet Bridgine Mode)

dev tun


###############################################################################
# Specify the underlying protocol beyond the Internet.
# Note that this setting must be correspond with the listening setting on
# the VPN Server.
# 
# Specify either 'proto tcp' or 'proto udp'.

proto udp


###############################################################################
# The destination hostname / IP address, and port number of
# the target VPN Server.
# 
# You have to specify as 'remote <HOSTNAME> <PORT>'. You can also
# specify the IP address instead of the hostname.
# 
# Note that the auto-generated below hostname are a "auto-detected
# IP address" of the VPN Server. You have to confirm the correctness
# beforehand.
# 
# When you want to connect to the VPN Server by using TCP protocol,
# the port number of the destination TCP port should be same as one of
# the available TCP listeners on the VPN Server.
# 
# When you use UDP protocol, the port number must same as the configuration
# setting of "OpenVPN Server Compatible Function" on the VPN Server.

remote vpn719329406.opengw.net 1195


###############################################################################
# The HTTP/HTTPS proxy setting.
# 
# Only if you have to use the Internet via a proxy, uncomment the below
# two lines and specify the proxy address and the port number.
# In the case of using proxy-authentication, refer the OpenVPN manual.

;http-proxy-retry
;http-proxy [proxy server] [proxy port]


###############################################################################
# The encryption and authentication algorithm.
# 
# Default setting is good. Modify it as you prefer.
# When you specify an unsupported algorithm, the error will occur.
# 
# The supported algorithms are as follows:
#  cipher: [NULL-CIPHER] NULL AES-128-CBC AES-192-CBC AES-256-CBC BF-CBC
#          CAST-CBC CAST5-CBC DES-CBC DES-EDE-CBC DES-EDE3-CBC DESX-CBC
#          RC2-40-CBC RC2-64-CBC RC2-CBC
#  auth:   SHA SHA1 MD5 MD4 RMD160

cipher AES-128-CBC
auth SHA1


###############################################################################
# Other parameters necessary to connect to the VPN Server.
# 
# It is not recommended to modify it unless you have a particular need.

resolv-retry infinite
nobind
persist-key
persist-tun
client
verb 3
#auth-user-pass


###############################################################################
# The certificate file of the destination VPN Server.
# 
# The CA certificate file is embedded in the inline format.
# You can replace this CA contents if necessary.
# Please note that if the server certificate is not a self-signed, you have to
# specify the signer's root certificate (CA) here.

<ca>
-----BEGIN CERTIFICATE-----
MIIF3jCCA8agAwIBAgIQAf1tMPyjylGoG7xkDjUDLTANBgkqhkiG9w0BAQwFADCB
iDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcTC0pl
cnNleSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNV
BAMTJVVTRVJUcnVzdCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTAw
MjAxMDAwMDAwWhcNMzgwMTE4MjM1OTU5WjCBiDELMAkGA1UEBhMCVVMxEzARBgNV
BAgTCk5ldyBKZXJzZXkxFDASBgNVBAcTC0plcnNleSBDaXR5MR4wHAYDVQQKExVU
aGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMTJVVTRVJUcnVzdCBSU0EgQ2Vy
dGlmaWNhdGlvbiBBdXRob3JpdHkwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIK
AoICAQCAEmUXNg7D2wiz0KxXDXbtzSfTTK1Qg2HiqiBNCS1kCdzOiZ/MPans9s/B
3PHTsdZ7NygRK0faOca8Ohm0X6a9fZ2jY0K2dvKpOyuR+OJv0OwWIJAJPuLodMkY
tJHUYmTbf6MG8YgYapAiPLz+E/CHFHv25B+O1ORRxhFnRghRy4YUVD+8M/5+bJz/
Fp0YvVGONaanZshyZ9shZrHUm3gDwFA66Mzw3LyeTP6vBZY1H1dat//O+T23LLb2
VN3I5xI6Ta5MirdcmrS3ID3KfyI0rn47aGYBROcBTkZTmzNg95S+UzeQc0PzMsNT
79uq/nROacdrjGCT3sTHDN/hMq7MkztReJVni+49Vv4M0GkPGw/zJSZrM233bkf6
c0Plfg6lZrEpfDKEY1WJxA3Bk1QwGROs0303p+tdOmw1XNtB1xLaqUkL39iAigmT
Yo61Zs8liM2EuLE/pDkP2QKe6xJMlXzzawWpXhaDzLhn4ugTncxbgtNMs+1b/97l
c6wjOy0AvzVVdAlJ2ElYGn+SNuZRkg7zJn0cTRe8yexDJtC/QV9AqURE9JnnV4ee
UB9XVKg+/XRjL7FQZQnmWEIuQxpMtPAlR1n6BB6T1CZGSlCBst6+eLf8ZxXhyVeE
Hg9j1uliutZfVS7qXMYoCAQlObgOK6nyTJccBz8NUvXt7y+CDwIDAQABo0IwQDAd
BgNVHQ4EFgQUU3m/WqorSs9UgOHYm8Cd8rIDZsswDgYDVR0PAQH/BAQDAgEGMA8G
A1UdEwEB/wQFMAMBAf8wDQYJKoZIhvcNAQEMBQADggIBAFzUfA3P9wF9QZllDHPF
Up/L+M+ZBn8b2kMVn54CVVeWFPFSPCeHlCjtHzoBN6J2/FNQwISbxmtOuowhT6KO
VWKR82kV2LyI48SqC/3vqOlLVSoGIG1VeCkZ7l8wXEskEVX/JJpuXior7gtNn3/3
ATiUFJVDBwn7YKnuHKsSjKCaXqeYalltiz8I+8jRRa8YFWSQEg9zKC7F4iRO/Fjs
8PRF/iKz6y+O0tlFYQXBl2+odnKPi4w2r78NBc5xjeambx9spnFixdjQg3IM8WcR
iQycE0xyNN+81XHfqnHd4blsjDwSXWXavVcStkNr/+XeTWYRUc+ZruwXtuhxkYze
Sf7dNXGiFSeUHM9h4ya7b6NnJSFd5t0dCy5oGzuCr+yDZ4XUmFF0sbmZgIn/f3gZ
XHlKYC6SQK5MNyosycdiyA5d9zZbyuAlJQG03RoHnHcAP9Dc1ew91Pq7P8yF1m9/
qS3fuQL39ZeatTXaw2ewh0qpKJ4jjv9cJ2vhsE/zB+4ALtRZh8tSQZXq9EfX7mRB
VXyNWQKV3WKdwrnuWih0hKWbt5DHDAff9Yk2dDLWKMGwsAvgnEzDHNb842m1R0aB
L6KCq9NjRHDEjf8tM7qtj3u1cIiuPhnPQCjY/MiQu12ZIvVS5ljFH4gxQ+6IHdfG
jjxDah2nGN59PRbxYvnKkKj9
-----END CERTIFICATE-----

</ca>


###############################################################################
# The client certificate file (dummy).
# 
# In some implementations of OpenVPN Client software
# (for example: OpenVPN Client for iOS),
# a pair of client certificate and private key must be included on the
# configuration file due to the limitation of the client.
# So this sample configuration file has a dummy pair of client certificate
# and private key as follows.

<cert>
-----BEGIN CERTIFICATE-----
MIICxjCCAa4CAQAwDQYJKoZIhvcNAQEFBQAwKTEaMBgGA1UEAxMRVlBOR2F0ZUNs
aWVudENlcnQxCzAJBgNVBAYTAkpQMB4XDTEzMDIxMTAzNDk0OVoXDTM3MDExOTAz
MTQwN1owKTEaMBgGA1UEAxMRVlBOR2F0ZUNsaWVudENlcnQxCzAJBgNVBAYTAkpQ
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5h2lgQQYUjwoKYJbzVZA
5VcIGd5otPc/qZRMt0KItCFA0s9RwReNVa9fDRFLRBhcITOlv3FBcW3E8h1Us7RD
4W8GmJe8zapJnLsD39OSMRCzZJnczW4OCH1PZRZWKqDtjlNca9AF8a65jTmlDxCQ
CjntLIWk5OLLVkFt9/tScc1GDtci55ofhaNAYMPiH7V8+1g66pGHXAoWK6AQVH67
XCKJnGB5nlQ+HsMYPV/O49Ld91ZN/2tHkcaLLyNtywxVPRSsRh480jju0fcCsv6h
p/0yXnTB//mWutBGpdUlIbwiITbAmrsbYnjigRvnPqX1RNJUbi9Fp6C2c/HIFJGD
ywIDAQABMA0GCSqGSIb3DQEBBQUAA4IBAQChO5hgcw/4oWfoEFLu9kBa1B//kxH8
hQkChVNn8BRC7Y0URQitPl3DKEed9URBDdg2KOAz77bb6ENPiliD+a38UJHIRMqe
UBHhllOHIzvDhHFbaovALBQceeBzdkQxsKQESKmQmR832950UCovoyRB61UyAV7h
+mZhYPGRKXKSJI6s0Egg/Cri+Cwk4bjJfrb5hVse11yh4D9MHhwSfCOH+0z4hPUT
Fku7dGavURO5SVxMn/sL6En5D+oSeXkadHpDs+Airym2YHh15h0+jPSOoR6yiVp/
6zZeZkrN43kuS73KpKDFjfFPh8t4r1gOIjttkNcQqBccusnplQ7HJpsk
-----END CERTIFICATE-----

</cert>

<key>
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA5h2lgQQYUjwoKYJbzVZA5VcIGd5otPc/qZRMt0KItCFA0s9R
wReNVa9fDRFLRBhcITOlv3FBcW3E8h1Us7RD4W8GmJe8zapJnLsD39OSMRCzZJnc
zW4OCH1PZRZWKqDtjlNca9AF8a65jTmlDxCQCjntLIWk5OLLVkFt9/tScc1GDtci
55ofhaNAYMPiH7V8+1g66pGHXAoWK6AQVH67XCKJnGB5nlQ+HsMYPV/O49Ld91ZN
/2tHkcaLLyNtywxVPRSsRh480jju0fcCsv6hp/0yXnTB//mWutBGpdUlIbwiITbA
mrsbYnjigRvnPqX1RNJUbi9Fp6C2c/HIFJGDywIDAQABAoIBAERV7X5AvxA8uRiK
k8SIpsD0dX1pJOMIwakUVyvc4EfN0DhKRNb4rYoSiEGTLyzLpyBc/A28Dlkm5eOY
fjzXfYkGtYi/Ftxkg3O9vcrMQ4+6i+uGHaIL2rL+s4MrfO8v1xv6+Wky33EEGCou
QiwVGRFQXnRoQ62NBCFbUNLhmXwdj1akZzLU4p5R4zA3QhdxwEIatVLt0+7owLQ3
lP8sfXhppPOXjTqMD4QkYwzPAa8/zF7acn4kryrUP7Q6PAfd0zEVqNy9ZCZ9ffho
zXedFj486IFoc5gnTp2N6jsnVj4LCGIhlVHlYGozKKFqJcQVGsHCqq1oz2zjW6LS
oRYIHgECgYEA8zZrkCwNYSXJuODJ3m/hOLVxcxgJuwXoiErWd0E42vPanjjVMhnt
KY5l8qGMJ6FhK9LYx2qCrf/E0XtUAZ2wVq3ORTyGnsMWre9tLYs55X+ZN10Tc75z
4hacbU0hqKN1HiDmsMRY3/2NaZHoy7MKnwJJBaG48l9CCTlVwMHocIECgYEA8jby
dGjxTH+6XHWNizb5SRbZxAnyEeJeRwTMh0gGzwGPpH/sZYGzyu0SySXWCnZh3Rgq
5uLlNxtrXrljZlyi2nQdQgsq2YrWUs0+zgU+22uQsZpSAftmhVrtvet6MjVjbByY
DADciEVUdJYIXk+qnFUJyeroLIkTj7WYKZ6RjksCgYBoCFIwRDeg42oK89RFmnOr
LymNAq4+2oMhsWlVb4ejWIWeAk9nc+GXUfrXszRhS01mUnU5r5ygUvRcarV/T3U7
TnMZ+I7Y4DgWRIDd51znhxIBtYV5j/C/t85HjqOkH+8b6RTkbchaX3mau7fpUfds
Fq0nhIq42fhEO8srfYYwgQKBgQCyhi1N/8taRwpk+3/IDEzQwjbfdzUkWWSDk9Xs
H/pkuRHWfTMP3flWqEYgW/LW40peW2HDq5imdV8+AgZxe/XMbaji9Lgwf1RY005n
KxaZQz7yqHupWlLGF68DPHxkZVVSagDnV/sztWX6SFsCqFVnxIXifXGC4cW5Nm9g
va8q4QKBgQCEhLVeUfdwKvkZ94g/GFz731Z2hrdVhgMZaU/u6t0V95+YezPNCQZB
wmE9Mmlbq1emDeROivjCfoGhR3kZXW1pTKlLh6ZMUQUOpptdXva8XxfoqQwa3enA
M7muBbF0XN7VO80iJPv+PmIZdEIAkpwKfi201YB+BafCIuGxIF50Vg==
-----END RSA PRIVATE KEY-----

</key>


""";
}
