SUBDIRS = xml2po examples

pkgconfigdir = $(datadir)/pkgconfig
pkgconfig_DATA = xml2po.pc

man_MANS = 

if ENABLE_DOCUMENTATION
man_MANS += xml2po.1
endif

$(srcdir)/README: README.in
	sed -e "s/\@VERSION\@/@VERSION@/g" < README.in > README

xml2po.1: xml2po.1.xml
	xsltproc --nonet $(srcdir)/xml2po.1.xml

publish: dist
	scp @PACKAGE@-@VERSION@.tar.gz danilo@kvota.net:/home/danilo/kvota.net/hacks/xml2po


EXTRA_DIST = \
	     README    \
	     README.in \
	     TODO      \
	     xml2po.pc.in \
	     xml2po.1.xml \
	     xml2po.1
