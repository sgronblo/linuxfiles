#!/bin/bash

gconftool-2 --set --type=string /desktop/gnome/url-handlers/spotify/command 'spotify_open_url "%s"'
gconftool-2 --set --type=bool /desktop/gnome/url-handlers/spotify/enabled true
gconftool-2 --set --type=bool /desktop/gnome/url-handlers/spotify/need-terminal false
