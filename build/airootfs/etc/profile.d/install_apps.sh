#!/bin/bash
if [ ! -f /var/tmp/turbowarp_installed ]; then
    # Add the universal flatpak app hub
    flatpak remote-add --if-not-exists flathub https://flathub.org
    # Silently fetch and register TurboWarp without prompt blockers
    flatpak install -y flathub org.turbowarp.TurboWarp
    touch /var/tmp/turbowarp_installed
fi
