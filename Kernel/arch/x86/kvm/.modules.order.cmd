cmd_arch/x86/kvm/modules.order := {  :; } | awk '!x[$$0]++' - > arch/x86/kvm/modules.order
