for device in $(cat $(gettop)/vendor/potato/potato.devices | sed -e 's/#.*$//' | awk '{printf "potato_%s-userdebug\n", $1}'); do
    add_lunch_combo $device;
done;
