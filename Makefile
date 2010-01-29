
INSTBASE = /usr/lib/enlightenment/modules/illume/keyboards

FILES-arabic = Arabic.kbd Arabic.png
FILES-persian = Persian.kbd Persian.png
FILES-browse = Browse.kbd end-browse.png pagedown-browse.png browse.png home-browse.png pageup-browse.png space-browse.png
FILES-danish = Danish.kbd danish.png
FILES-default-alt = Default-alt.kbd
FILES-dutch = capslock-negative.png end.png pagedown.png qwerty-dutch-nl.png Terminal-dutch-nl.kbd capslock.png home.png pageup.png space.png
FILES-dvorak = Dvorak.kbd dvorak.png
FILES-french = Azerty.kbd Azerty.png
FILES-german = German.kbd German.png
FILES-hebrew = Hebrew.kbd Alpha-hebrew-il.png
FILES-numeric-alt = end-alt.png home-alt.png Numbers-alt.kbd numeric-alt.png pagedown-alt.png pageup-alt.png
FILES-russian = X8_Russian.kbd X8-russian-ru.png
FILES-russian-terminal = Terminal_Russian.kbd Terminal-russian-ru.png

all:

install: install-arabic install-browse install-danish install-default-alt install-dutch install-dvorak install-french install-german install-hebrew install-numeric-alt install-russian install-russian-terminal install-persian

install-%:
	install -d ${DESTDIR}${INSTBASE}/$(@:install-%=%)
	(cd $(@:install-%=%); install -m 0644 $(FILES-$(@:install-%=%)) ${DESTDIR}${INSTBASE}/$(@:install-%=%))

