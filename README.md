# firewalla-serial-console

## What is this project?

This project is intended to provide a simple script that can be used as a
one-step connection script so you don't need to remember the `ls -ltr ...`
command and the `screen` command in order to pull up a serial console on your
Firewalla Gold.

Note that this project is not officially supported by either Firewalla and is
provided free of charge as open source software. Firewalla and the contributors
of this package provide no guarantees of compatibility or any other warranty if
you choose to use this software on your machine or Firewalla Gold unit.

## Usage

```bash
# Clone the repository on your Firewalla Gold
git clone https://github.com/mrodrig/firewalla-serial-console.git

# Navigate into the cloned directory and ensure the scripts are executable
cd firewalla-serial-console
chmod +x connect.sh

# Connect to the serial console using your USB to RJ45 serial cable
./connect.sh

# Hit Enter a couple of times to get the login prompt.
# When you're ready to disconnect, hit Ctrl + A + K or Ctrl + A + \ to exit
```

## How does this work?

This script simply automates the Firewalla Gold Console connection commands from
the Mac and Linux sections of the
[official documentation](https://help.firewalla.com/hc/en-us/articles/360045034153-Connecting-to-Firewalla-Gold-s-Console).

This will use a terminal instance on your machine to provide a console to your
Firewalla Gold so that you can login as though you were physically using a
keyboard and monitor directly on the box.

Once connected, you may need to hit `Enter` a couple of times to see the login
prompt. You'll then be able to login as the `pi` user and can provide the
password from your Firewalla App (Settings icon --> Advanced --> Configurations
--> Serial Debug Console). You should then be presented with a shell prompt.
After you're done, you can close the `screen` session by hitting either
`Ctrl + A + K` to kill this session, or `Ctrl + A + \` to kill all sessions.

## Contributing

I'm open to pull requests that improve the script logic, performance, and
reliability.

## FAQ

Q: What cable are you using with your Firewalla Gold?

A: I wrote and verified this script using a [Cable Matters USB to RJ45 Console
Cable with FTDI 6 Feet](https://www.amazon.com/gp/product/B078PVJ5ZQ). While
this cable is rated for up to 250Kbps, I was only able to get it to work
reliably with my Firewalla Gold on a Mac at 9600bps. I'll have to check what's
going on, but I have been able to intermittently get it working with a slightly
higher baud rate.

Q: Why is your baud rate lower than what Firewalla lists?

A: It could be the cable, or something about my Firewalla Gold. I'm not 100%
sure and need to investigate more.
