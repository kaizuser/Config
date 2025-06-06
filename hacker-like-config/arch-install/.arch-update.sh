#!/bin/bash
LOGFILE="/var/log/pacman-update.log"
echo "--- Actualización iniciada: $(date) ---" >> "$LOGFILE"
/usr/bin/pacman -Syu --noconfirm >> "$LOGFILE" 2>&1
echo "--- Fin de la actualización: $(date) ---" >> "$LOGFILE"
