#!/bin/bash

### Enable shutdown on power button press
cp /usr/share/doc/acpid/examples/powerbtn /etc/acpi/events/
cp /usr/share/doc/acpid/examples/powerbtn.sh /etc/acpi/
chmod 755 /etc/acpi/powerbtn.sh
systemctl enable acpid.service

