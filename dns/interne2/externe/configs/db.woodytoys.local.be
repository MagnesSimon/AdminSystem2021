$ORIGIN woodytoys.local.
$TTL	3600
woodytoys.local.		IN	SOA	ns.woodytoys.local. HE201558@students.ephec.be. (

		         2019031001	; Serial
			 3600		; Refresh
			  600		; Retry
			1286400		; Expire
			 600 )	; Negative Cache TTL

@	IN	 NS	 ns
	IN	 A	 51.210.44.117

woodytoys.local.			IN	NS	ns.woodytoys.local.
ns				IN	A	51.210.44.117
www				IN	A	51.210.44.117
@				IN	A	51.210.44.117
b2b				IN	CNAME	www
intranet			IN	A	51.210.44.117

