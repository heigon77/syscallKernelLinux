cmd_net/ipv4/netfilter/modules.order := {   echo net/ipv4/netfilter/iptable_nat.ko; :; } | awk '!x[$$0]++' - > net/ipv4/netfilter/modules.order
