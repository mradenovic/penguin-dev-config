killall --user miroslavradenovic
groupmod --new-name mischa miroslavradenovic
usermod --move-home --home /home/mischa --login mischa miroslavradenovic
usermod --append --groups users mischa
loginctl enable-linger mischa
