#!/sbin/sh

model="find7a"
density="480"

for kvp in $(cat /proc/cmdline); do
	echo $kvp | grep -q =
	if [ $? -eq 0 ]; then
		k=$(echo $kvp | cut -d'=' -f1)
		v=$(echo $kvp | cut -d'=' -f2)
	else
		k=$kvp
		v=""
	fi
	if [ "$k" = "oppo.pcb_version" ]; then
		case $v in
		20|21|22|23)
			model="find7s"
			density="640"
			;;
		esac
	fi
done

cat /system/build.prop | \
	sed '/^ro.oppo.device/d' | \
	sed '/^ro.sf.lcd_density/d' \
	> /tmp/build.prop

echo "ro.oppo.device=$model" >> /tmp/build.prop
echo "ro.sf.lcd_density=$density" >> /tmp/build.prop

cat /tmp/build.prop > /system/build.prop
rm /tmp/build.prop
