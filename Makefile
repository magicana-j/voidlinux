.PHONY: all repos tools xorg kde pulse pipewire fonts input network nm_remove apps graphics multimedia office programming virtualization finish

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

nm_remove:
	sh scripts/nm_remove.sh

apps:
	sh scripts/apps.sh

graphics:
	sh scripts/graphics.sh

multimedia:
	sh scripts/multimedia.sh

office:
	sh scripts/office.sh

programming:
	sh scripts/programming.sh

virtualization:
	sh scripts/virtualization.sh

finish:
	sh scripts/finish.sh
