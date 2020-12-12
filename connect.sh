SERIAL_DEVICES=`ls -ltr /dev/tty.usbserial* | grep -v 'total' | awk -F ' ' '{ print $10 }'`

select DEVICE in $SERIAL_DEVICES
do
  # Connect using 9600 bps baud rate
  sudo screen "$SERIAL_DEVICE" 9600
done
