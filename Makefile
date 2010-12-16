SHELL = /bin/bash
INSTALL = /bin/install -c
DESTDIR =
bindir = /usr/bin
sysconfdir = /etc
mandir = /usr/share/man/man1

all:

install: all
	${INSTALL} -d ${DESTDIR}/${sysconfdir}/srcpac.d
	${INSTALL} -d ${DESTDIR}/${bindir}
	${INSTALL} -d ${DESTDIR}/${mandir}
	${INSTALL} -m 755 srcpac ${DESTDIR}/${bindir}
	${INSTALL} -m 644 srcpac.1 ${DESTDIR}/${mandir}
