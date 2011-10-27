# jan/02/1970 00:24:39 by RouterOS 5.7
# software id = JYNB-XW63
#
/interface ethernet
set 0 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C2 \
    master-port=none mtu=1500 name=ether1 speed=100Mbps
set 1 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C3 \
    master-port=none mtu=1500 name=ether2 speed=100Mbps
set 2 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C4 \
    master-port=none mtu=1500 name=ether3 speed=100Mbps
set 3 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C5 \
    master-port=none mtu=1500 name=ether4 speed=100Mbps
set 4 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C6 \
    master-port=none mtu=1500 name=ether5 speed=100Mbps
set 5 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C7 \
    master-port=none mtu=1500 name=ether6 speed=100Mbps
set 6 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C8 \
    master-port=none mtu=1500 name=ether7 speed=100Mbps
set 7 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:C9 \
    master-port=none mtu=1500 name=ether8 speed=100Mbps
set 8 arp=enabled auto-negotiation=yes bandwidth=unlimited/unlimited \
    disabled=no full-duplex=yes l2mtu=1520 mac-address=00:0C:42:A9:B5:CA \
    master-port=none mtu=1500 name=ether9 speed=100Mbps
/interface ethernet switch
set switch1 mirror-source=none mirror-target=none name=switch1
set switch2 mirror-source=none mirror-target=none name=switch2
/interface wireless security-profiles
set default authentication-types="" eap-methods=passthrough group-ciphers="" \
    group-key-update=5m interim-update=0s management-protection=disabled \
    management-protection-key="" mode=none name=default \
    radius-eap-accounting=no radius-mac-accounting=no \
    radius-mac-authentication=no radius-mac-caching=disabled \
    radius-mac-format=XX:XX:XX:XX:XX:XX radius-mac-mode=as-username \
    static-algo-0=none static-algo-1=none static-algo-2=none static-algo-3=\
    none static-key-0="" static-key-1="" static-key-2="" static-key-3="" \
    static-sta-private-algo=none static-sta-private-key="" \
    static-transmit-key=key-0 supplicant-identity=MikroTik tls-certificate=\
    none tls-mode=no-certificates unicast-ciphers="" wpa-pre-shared-key="" \
    wpa2-pre-shared-key=""
/ip hotspot profile
set default dns-name="" hotspot-address=0.0.0.0 html-directory=hotspot \
    http-cookie-lifetime=3d http-proxy=0.0.0.0:0 login-by=cookie,http-chap \
    name=default rate-limit="" smtp-server=0.0.0.0 split-user-domain=no \
    use-radius=no
/ip hotspot user profile
set default idle-timeout=none keepalive-timeout=2m name=default shared-users=\
    1 status-autorefresh=1m transparent-proxy=no
/ip ipsec proposal
set default auth-algorithms=sha1 disabled=no enc-algorithms=3des lifetime=30m \
    name=default pfs-group=modp1024
/port
set 0 baud-rate=auto data-bits=8 flow-control=none name=serial0 parity=none \
    stop-bits=1
/ppp profile
set default change-tcp-mss=yes name=default only-one=default use-compression=\
    default use-encryption=default use-mpls=default use-vj-compression=\
    default
set default-encryption change-tcp-mss=yes name=default-encryption only-one=\
    default use-compression=default use-encryption=yes use-mpls=default \
    use-vj-compression=default
/queue type
set default kind=pfifo name=default pfifo-limit=50
set ethernet-default kind=pfifo name=ethernet-default pfifo-limit=50
set wireless-default kind=sfq name=wireless-default sfq-allot=1514 \
    sfq-perturb=5
set synchronous-default kind=red name=synchronous-default red-avg-packet=1000 \
    red-burst=20 red-limit=60 red-max-threshold=50 red-min-threshold=10
set hotspot-default kind=sfq name=hotspot-default sfq-allot=1514 sfq-perturb=\
    5
set multi-queue-ethernet-default kind=mq-pfifo mq-pfifo-limit=50 name=\
    multi-queue-ethernet-default
set default-small kind=pfifo name=default-small pfifo-limit=10
/routing bgp instance
set default as=65530 client-to-client-reflection=yes disabled=no \
    ignore-as-path-len=no name=default out-filter="" redistribute-connected=\
    no redistribute-ospf=no redistribute-other-bgp=no redistribute-rip=no \
    redistribute-static=no router-id=0.0.0.0 routing-table=""
/routing ospf instance
set default disabled=no distribute-default=never in-filter=ospf-in \
    metric-bgp=auto metric-connected=20 metric-default=1 metric-other-ospf=\
    auto metric-rip=20 metric-static=20 name=default out-filter=ospf-out \
    redistribute-bgp=no redistribute-connected=no redistribute-other-ospf=no \
    redistribute-rip=no redistribute-static=no router-id=0.0.0.0
/routing ospf area
set backbone area-id=0.0.0.0 disabled=no instance=default name=backbone type=\
    default
/snmp
set contact="" enabled=no engine-id="" location="" trap-target=0.0.0.0 \
    trap-version=1
/snmp community
set public address=0.0.0.0/0 authentication-password="" \
    authentication-protocol=MD5 encryption-password="" encryption-protocol=\
    DES name=public read-access=yes security=none write-access=no
/system logging action
set memory memory-lines=100 memory-stop-on-full=no name=memory target=memory
set disk disk-file-count=2 disk-file-name=log disk-lines-per-file=100 \
    disk-stop-on-full=no name=disk target=disk
set echo name=echo remember=yes target=echo
set remote bsd-syslog=no name=remote remote=0.0.0.0 remote-port=514 \
    src-address=0.0.0.0 syslog-facility=daemon syslog-severity=auto target=\
    remote
/system routerboard settings
set baud-rate=115200 boot-delay=2s boot-device=nand-if-fail-then-ethernet \
    boot-protocol=bootp cpu-frequency=680MHz enable-jumper-reset=yes \
    enter-setup-on=any-key force-backup-booter=no silent-boot=no
set baud-rate=115200 boot-delay=2s boot-device=nand-if-fail-then-ethernet \
    boot-protocol=bootp cpu-frequency=680MHz enable-jumper-reset=yes \
    enter-setup-on=any-key force-backup-booter=no silent-boot=no
/user group
set read name=read policy="local,telnet,ssh,reboot,read,test,winbox,password,w\
    eb,sniff,sensitive,api,!ftp,!write,!policy" skin=default
set write name=write policy="local,telnet,ssh,reboot,read,write,test,winbox,pa\
    ssword,web,sniff,sensitive,api,!ftp,!policy" skin=default
set full name=full policy="local,telnet,ssh,ftp,reboot,read,write,policy,test,\
    winbox,password,web,sniff,sensitive,api" skin=default
/interface bridge settings
set use-ip-firewall=no use-ip-firewall-for-pppoe=no use-ip-firewall-for-vlan=\
    no
/interface ethernet switch port
set ether1 vlan-header=leave-as-is vlan-mode=fallback
set ether2 vlan-header=leave-as-is vlan-mode=fallback
set ether3 vlan-header=leave-as-is vlan-mode=fallback
set ether4 vlan-header=leave-as-is vlan-mode=fallback
set ether5 vlan-header=leave-as-is vlan-mode=fallback
set ether6 vlan-header=leave-as-is vlan-mode=fallback
set ether7 vlan-header=leave-as-is vlan-mode=fallback
set ether8 vlan-header=leave-as-is vlan-mode=fallback
set ether9 vlan-header=leave-as-is vlan-mode=fallback
set switch1_cpu vlan-header=leave-as-is vlan-mode=fallback
set switch2_cpu vlan-header=leave-as-is vlan-mode=fallback
/interface l2tp-server server
set authentication=pap,chap,mschap1,mschap2 default-profile=\
    default-encryption enabled=no max-mru=1460 max-mtu=1460 mrru=disabled
/interface ovpn-server server
set auth=sha1,md5 certificate=none cipher=blowfish128,aes128 default-profile=\
    default enabled=no keepalive-timeout=60 mac-address=FE:21:12:7B:D6:E9 \
    max-mtu=1500 mode=ip netmask=24 port=1194 require-client-certificate=no
/interface pptp-server server
set authentication=mschap1,mschap2 default-profile=default-encryption \
    enabled=no keepalive-timeout=30 max-mru=1460 max-mtu=1460 mrru=disabled
/interface sstp-server server
set authentication=pap,chap,mschap1,mschap2 certificate=none default-profile=\
    default enabled=no keepalive-timeout=60 max-mru=1500 max-mtu=1500 mrru=\
    disabled port=443 verify-client-certificate=no
/interface wireless align
set active-mode=yes audio-max=-20 audio-min=-100 audio-monitor=\
    00:00:00:00:00:00 filter-mac=00:00:00:00:00:00 frame-size=300 \
    frames-per-second=25 receive-all=no ssid-all=no
/interface wireless sniffer
set channel-time=200ms file-limit=10 file-name="" memory-limit=10 \
    multiple-channels=no only-headers=no receive-errors=no streaming-enabled=\
    no streaming-max-rate=0 streaming-server=0.0.0.0
/interface wireless snooper
set channel-time=200ms multiple-channels=yes receive-errors=no
/ip accounting
set account-local-traffic=no enabled=no threshold=256
/ip accounting web-access
set accessible-via-web=no address=0.0.0.0/0
/ip address
add address=192.168.88.1/24 comment="default configuration" disabled=no \
    interface=ether1 network=192.168.88.0
add address=10.0.0.60/24 disabled=no interface=ether2 network=10.0.0.0
/ip dhcp-server config
set store-leases-disk=5m
/ip dns
set allow-remote-requests=no cache-max-ttl=1w cache-size=2048KiB \
    max-udp-packet-size=512
/ip firewall connection tracking
set enabled=yes generic-timeout=10m icmp-timeout=10s tcp-close-timeout=10s \
    tcp-close-wait-timeout=10s tcp-established-timeout=1d \
    tcp-fin-wait-timeout=10s tcp-last-ack-timeout=10s \
    tcp-syn-received-timeout=5s tcp-syn-sent-timeout=5s tcp-syncookie=no \
    tcp-time-wait-timeout=10s udp-stream-timeout=3m udp-timeout=10s
/ip firewall service-port
set ftp disabled=no ports=21
set tftp disabled=no ports=69
set irc disabled=no ports=6667
set h323 disabled=no
set sip disabled=no ports=5060,5061 sip-direct-media=yes
set pptp disabled=no
/ip hotspot service-port
set ftp disabled=no ports=21
/ip neighbor discovery
set ether1 disabled=no
set ether2 disabled=no
set ether3 disabled=no
set ether4 disabled=no
set ether5 disabled=no
set ether6 disabled=no
set ether7 disabled=no
set ether8 disabled=no
set ether9 disabled=no
/ip proxy
set always-from-cache=no cache-administrator=webmaster cache-hit-dscp=4 \
    cache-on-disk=no enabled=no max-cache-size=none max-client-connections=\
    600 max-fresh-time=3d max-server-connections=600 parent-proxy=0.0.0.0 \
    parent-proxy-port=0 port=8080 serialize-connections=no src-address=\
    0.0.0.0
/ip service
set telnet disabled=no port=23
set ftp disabled=no port=21
set www disabled=no port=80
set ssh disabled=no port=22
set www-ssl certificate=none disabled=yes port=443
set api disabled=yes port=8728
set winbox disabled=no port=8291
/ip socks
set connection-idle-timeout=2m enabled=no max-connections=200 port=1080
/ip ssh
set forwarding-enabled=no
/ip traffic-flow
set active-flow-timeout=30m cache-entries=4k enabled=no \
    inactive-flow-timeout=15s interfaces=all
/ip upnp
set allow-disable-external-interface=yes enabled=no show-dummy-rule=yes
/mpls
set dynamic-label-range=16-1048575 propagate-ttl=yes
/mpls interface
add disabled=no interface=all mpls-mtu=1508
/mpls ldp
set distribute-for-default-route=no enabled=no hop-limit=255 loop-detect=no \
    lsr-id=0.0.0.0 path-vector-limit=255 transport-address=0.0.0.0 \
    use-explicit-null=no
/port firmware
set directory=firmware
/ppp aaa
set accounting=yes interim-update=0s use-radius=no
/queue interface
set ether1 queue=ethernet-default
set ether2 queue=ethernet-default
set ether3 queue=ethernet-default
set ether4 queue=ethernet-default
set ether5 queue=ethernet-default
set ether6 queue=ethernet-default
set ether7 queue=ethernet-default
set ether8 queue=ethernet-default
set ether9 queue=ethernet-default
/radius incoming
set accept=no port=3799
/routing bfd interface
set all disabled=no interface=all interval=0.2sec min-rx=0.2sec multiplier=5
/routing mme
set bidirectional-timeout=2 gateway-class=none gateway-keepalive=1m \
    gateway-selection=no-gateway origination-interval=5s preferred-gateway=\
    0.0.0.0 timeout=1m ttl=50
/routing rip
set distribute-default=never garbage-timer=2m metric-bgp=1 metric-connected=1 \
    metric-default=1 metric-ospf=1 metric-static=1 redistribute-bgp=no \
    redistribute-connected=no redistribute-ospf=no redistribute-static=no \
    routing-table=main timeout-timer=3m update-timer=30s
/store
add disabled=no disk=system name=web-proxy1 type=web-proxy
/system clock
set time-zone-name=manual
/system clock manual
set dst-delta=+00:00 dst-end="jan/01/1970 00:00:00" dst-start=\
    "jan/01/1970 00:00:00" time-zone=+00:00
/system console
add disabled=no port=serial0 term=vt102
/system health
set fan-mode=auto use-fan=main
/system identity
set name=MikroTik
/system logging
add action=memory disabled=no prefix="" topics=info
add action=memory disabled=no prefix="" topics=error
add action=memory disabled=no prefix="" topics=warning
add action=echo disabled=no prefix="" topics=critical
/system note
set note="" show-at-login=yes
/system ntp client
set enabled=no mode=broadcast primary-ntp=0.0.0.0 secondary-ntp=0.0.0.0
/system resource irq
set 0 cpu=auto
set 1 cpu=auto
set 2 cpu=auto
set 3 cpu=auto
set 4 cpu=auto
set 5 cpu=auto
set 6 cpu=auto
/system upgrade mirror
set check-interval=1d enabled=no primary-server=0.0.0.0 secondary-server=\
    0.0.0.0 user=""
/system watchdog
set auto-send-supout=no automatic-supout=yes no-ping-delay=5m watch-address=\
    none watchdog-timer=yes
/tool bandwidth-server
set allocate-udp-ports-from=2000 authenticate=yes enabled=yes max-sessions=\
    100
/tool e-mail
set address=0.0.0.0 from=<> password="" port=25 user=""
/tool graphing
set page-refresh=300 store-every=5min
/tool mac-server
set (unknown) disabled=no interface=all
/tool mac-server ping
set enabled=yes
/tool sms
set allowed-number="" channel=0 keep-max-sms=0 receive-enabled=no secret=""
/tool sniffer
set file-limit=1000KiB file-name="" filter-stream=yes interface=all \
    memory-limit=100KiB memory-scroll=yes only-headers=no streaming-enabled=\
    no streaming-server=0.0.0.0
/tool traffic-generator
set latency-distribution-scale=10 test-id=0
/user aaa
set accounting=yes default-group=read interim-update=0s use-radius=no
