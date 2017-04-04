* Config
discard
pr drop _all
clear all
cls
set trace off

* Create data
input str20 ipaddr
104.79.139.192
175.203.224.172
175.203.224.172
175.203.224.172
175.203.224.172
1.1.1.1
0.0.0.0
localhost
1.2.3.4
end

* Usage example
preserve
	geocode_ip ipaddr in 1/8, clear
	tempfile geocoded
	save "`geocoded'"
restore

// I can't do "assert(master match)" b/c "localhost" gets converted into "127.0.0.1"
merge m:1 ipaddr using "`geocoded'", keep(master match) nogen

exit
