#!/bin/sh
xbps-install -Suu -y
xbps-install -y void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
xbps-install -Su -y
