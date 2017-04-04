# geocode_ip
Program that geocode IP addresses in Stata

Usage:

```stata
input ips
104.79.139.192
175.203.224.172
end

geocode_ip ips
list
```

Installation:

```stata
net install geocode_ip, from(https://github.com/sergiocorreia/geocode_ip/raw/master/)
```
