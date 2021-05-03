$ORIGIN l1-5.ephec-ti.be.
$TTL	3600
l1-5.ephec-ti.be.	IN	SOA	ns.l1-5.ephec-ti.be. HE201558@students.ephec.be. (

		         2019031001	; Serial
			 3600		; Refresh
			  600		; Retry
			86400		; Expire
			 600 )	; Negative Cache TTL

@	IN	 NS	 ns
	IN	 A	 51.210.44.117

l1-5.ephec-ti.be.               IN      NS      ns.l1-5.ephec-ti.be.
ns                              IN      A       51.210.44.117
www                             IN      A       51.210.44.117
@                               IN      A       51.210.44.117
b2b                             IN      CNAME   www
intranet                        IN      CNAME   www

