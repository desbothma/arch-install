# Setup Org file sync to AWS

Copy the two files in this directory to '~/.config/systemd/user/'

Then run the following two command to enable and start the servce.

```shell
systemctl --user enable rclone-sync.timer
systemctl --user start rclone-sync.timer
```

Logs are sent here: '/var/log/rclone/sync.log'
To see the logs you can run:

``` shell
sudo tail -f /var/log/rclone/sync.log 
```

Note: The service only runs when logged in and not after boot. There are extra steps that need to be taken to start the service at boot. I believe I would need to run this to get it to run after boot (which I have not done):

``` shell
sudo loginctl enable-linger your_username
```

`
