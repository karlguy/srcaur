all:

install: all
	install -d ${DESTDIR}/etc/srcpac.d
	install -d ${DESTDIR}/usr/bin
	install -d ${DESTDIR}/usr/share/man/man1
	install -m 755 srcpac ${DESTDIR}/usr/bin
	install -m 644 srcpac.1 ${DESTDIR}/usr/share/man/man1
