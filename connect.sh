SERIAL_DEVICES=`ls -ltr /dev/tty.usbserial* | grep -v 'total' | awk -F ' ' '{ print $10 }'`

select DEVICE in $SERIAL_DEVICES
do
  # Connect using 151200 bps baud rate and flow control off
  sudo screen "$SERIAL_DEVICE" 151200 -ixoff
done
