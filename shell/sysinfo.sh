notify-send -t 5000 "system usage" \
"ram: $(free -h | awk '/^Mem/ {print $3 "/" $2}')
disk: $(df -h / | awk 'NR==2 {print $3 "/" $2}')
cpu: $(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)%
gpu: $(cat /sys/class/drm/card1/device/gpu_busy_percent || echo "N/A")%
lang: $(xkb-switch)"
