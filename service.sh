#!/system/bin/sh

MODDIR=${0%/*}

until [[ "$(getprop sys.boot_completed)" == "1" ]]; do
	sleep 1
done

device_config put activity_manager max_phantom_processes 2147483647

resetprop persist.sys.fflag.override.settings_enable_monitor_phantom_procs false

sysctl -w fs.inotify.max_user_watches=2147483647
