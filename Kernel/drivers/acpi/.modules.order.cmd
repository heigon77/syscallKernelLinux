cmd_drivers/acpi/modules.order := {   cat drivers/acpi/acpica/modules.order;   cat drivers/acpi/numa/modules.order;   cat drivers/acpi/pmic/modules.order;   cat drivers/acpi/dptf/modules.order; :; } | awk '!x[$$0]++' - > drivers/acpi/modules.order
