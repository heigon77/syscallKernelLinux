cmd_drivers/media/usb/modules.order := {   cat drivers/media/usb/ttusb-dec/modules.order;   cat drivers/media/usb/ttusb-budget/modules.order;   cat drivers/media/usb/dvb-usb/modules.order;   cat drivers/media/usb/dvb-usb-v2/modules.order;   cat drivers/media/usb/siano/modules.order;   cat drivers/media/usb/b2c2/modules.order;   cat drivers/media/usb/zr364xx/modules.order;   cat drivers/media/usb/stkwebcam/modules.order;   cat drivers/media/usb/s2255/modules.order; :; } | awk '!x[$$0]++' - > drivers/media/usb/modules.order
