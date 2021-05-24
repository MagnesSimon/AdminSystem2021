$ORIGIN l1-5.ephec-ti.be.
$TTL	3600
l1-5.ephec-ti.be.	IN	SOA	ns.l1-5.ephec-ti.be. HE201558@students.ephec.be. (

		         2019031001	; Serial
			 3600		; Refresh
			  600		; Retry
			1286400		; Expire
			 600 )	; Negative Cache TTL

;Nom de serveur faisant autorité sur le domaine l1-5.ephec-ti.be.
l1-5.ephec-ti.be.		IN	NS	ns.l1-5.ephec-ti.be.

; nom du serveur avec son adresse IP associée
ns				IN	A	51.210.44.117

;serveur web
www				IN	A	51.210.44.117
b2b				IN	CNAME	www

;serveur VoIP
sip				IN	A	135.125.101.223
_sip._udp			SRV	0	0	5060	sip
_sip._tcp			SRV	0	0	5060	sip


;serveur mail
mail		IN	A	135.125.101.241
@		IN	MX	10	mail.l1-5.ephec-ti.be.
smtp		IN	CNAME	mail
pop3		IN	CNAME	mail
imap		IN	CNAME	mail
