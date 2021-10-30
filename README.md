# fishbowl

fishbowl is your super duper coolio hacker kiosk display.

fishbowl allows you to display [hollywood](), a markdown textual based powerpoint display using [patat](), a listing of all the top news headlines using [clinews](), and a QR Code for some information using [qrcode-terminal]().

It then displays all of this information using tmux to take advantage of all of your juicy screen real estate.

## Requirements

To use this setup effectively, you need a self hosted runner with ```ansible``` and the ```community.general``` collection installed.

You then need to define your appropriate secrets such as your news api key, ansible become password, and QR code link.

Then push to your cloned repository and watch the magic happen.

