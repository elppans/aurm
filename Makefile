SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}/usr/bin
INFODIR=${DESTDIR}/usr/share/doc/aurm
LICENSEDIR=${DESTDIR}/usr/share/licenses/aurm
MODE=664
DIRMODE=755

.PHONY: build

install:
	@echo "            Script aurm"
	@echo ":: Aguarde, instalando software aurm em: ${BINDIR}"
	@install -Dm755 "usr/bin/aurm" "/usr/bin/aurm"
	@install -d ${LICENSEDIR}/
	@cp LICENSE ${LICENSEDIR}/
	@install -d ${INFODIR}/
	@cp Makefile README.md ${INFODIR}/
	@echo ":: Feito! aurm software instalado em: ${BINDIR}"
	@echo
uninstall:
	@rm ${BINDIR}/aurm
	@rm -rf ${INFODIR}
	@rm -rf ${LICENSEDIR}
	@echo "aurm foi removido."
