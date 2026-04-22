.PHONY: all repos tools xorg kde pulse pipewire fonts input network apps finish

all: repos tools xorg kde pulse fonts input network apps finish

repos:
	sh scripts/repos.sh

tools:
	sh scripts/tools.sh

xorg:
	sh scripts/xorg.sh

kde:
	sh scripts/kde.sh

pulse:
	sh scripts/pulse.sh

pipewire:
	sh scripts/pipewire.sh

fonts:
	sh scripts/fonts.sh

input:
	sh scripts/input.sh

network:
	sh scripts/network.sh

apps:
	sh scripts/apps.sh
