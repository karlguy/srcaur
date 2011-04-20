SHELL = /bin/bash
INSTALL = /bin/install -c
MSGFMT = /usr/bin/msgfmt
SED = /bin/sed
DESTDIR =
bindir = /usr/bin
sysconfdir = /etc
mandir = /usr/share/man/man1
localedir = /usr/share/locale

all:

install: all
	${INSTALL} -d ${DESTDIR}/${sysconfdir}/srcpac.d
	${INSTALL} -d ${DESTDIR}/${bindir}
	${INSTALL} -d ${DESTDIR}/${mandir}
	${INSTALL} -m 755 srcpac ${DESTDIR}/${bindir}
	${INSTALL} -m 644 srcpac.1 ${DESTDIR}/${mandir}
	for file in po/*.po; \
	do \
	  lang=$$(echo $$file | $(SED) -e 's#.*/\([^/]\+\).po#\1#'); \
	  $(INSTALL) -d $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES; \
	  $(MSGFMT) -o $(DESTDIR)$(localedir)/$$lang/LC_MESSAGES/srcpac.mo $$file; \
	done
