cmd_net/netfilter/xt_LOG.ko := ld -r  -m elf_x86_64  --build-id=sha1  -T scripts/module.lds -o net/netfilter/xt_LOG.ko net/netfilter/xt_LOG.o net/netfilter/xt_LOG.mod.o;  true
