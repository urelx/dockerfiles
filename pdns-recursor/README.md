pdns-recursor
===========

Description
-----------
PowerDNS Recursor: a high performance resolving nameserver  
<https://www.powerdns.com/>


Usage samples
-----------
### 1. Using root DNS servers
```
docker run -p 53:53 -p 53:53/udp urelx/pdns-recursor
```

### 2. Using forwarders  
```
docker run -p 53:53 -p 53:53/udp urelx/pdns-recursor --forward-zones="localdomain=x.x.x.x:8600" --forward-zones-recurse=".=8.8.8.8"
```
