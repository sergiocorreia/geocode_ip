# `geocode_ip`: Geocode IP addresses in Stata

## Usage:

```stata
input ip
104.79.139.192
175.203.224.172
end

geocode_ip ip, clear
list
```

This [do file](test.do) has an example that merges the new data back into the original dataset.


## Syntax

`geocode_ip` *varname* `[if] [in], clear [sleep(0.4)]`


## Features

- Since online queries can fail, this program keeps partial results (so you can resume them easily)
- By default limits its query rate to the maximum allowed by the API conditions (0.4s per request).


## Installation:

```stata
net install geocode_ip, from(https://github.com/sergiocorreia/geocode_ip/raw/master/src/)
```
