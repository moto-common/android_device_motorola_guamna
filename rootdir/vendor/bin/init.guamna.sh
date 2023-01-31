#!/vendor/bin/sh
device=$(getprop ro.boot.device)

if [ "$device" = "guam" ]; then
    mount -o bind /vendor/lib64/com.qti.sensormodule.mot_guam_s5k3l6_ofilm.bin /vendor/lib64/camera/com.qti.sensormodule.mot_guam_s5k3l6_ofilm.bin
fi
