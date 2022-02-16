TEMPLATE      = subdirs

SUBDIRS        += gui_source
SUBDIRS        += console_source

isEmpty(PREFIX) {
 PREFIX = /usr
}

target.path = $PWD
target.commands = bash -x "$$PWD/install.sh $$PREFIX"
INSTALLS += target
