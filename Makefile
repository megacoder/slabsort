PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all::	slabsort

check::	slabsort
	./slabsort ${ARGS}

clean::
	${RM} core.* lint tags

distclean clobber:: clean

install:: slabsort
	install -D -c slabsort ${BINDIR}/slabsort

uninstall::
	${RM} ${BINDIR}/slabsort
