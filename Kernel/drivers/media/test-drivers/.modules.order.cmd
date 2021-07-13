cmd_drivers/media/test-drivers/modules.order := {   cat drivers/media/test-drivers/vivid/modules.order; :; } | awk '!x[$$0]++' - > drivers/media/test-drivers/modules.order
