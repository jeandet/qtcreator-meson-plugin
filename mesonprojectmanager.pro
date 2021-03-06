DEFINES += MESONPROJECTMANAGER_LIBRARY

QT *= network

# MesonProjectManager files

SOURCES += \
    src/ninjamakestep.cpp \
    src/ninjamakestepconfigwidget.cpp \
    src/mesonprojectmanagerplugin.cpp \
    src/mesonbuildinfo.cpp \
    src/mesonbuildconfiguration.cpp \
    src/mesonprojectimporter.cpp \
    src/filelistnode.cpp \
    src/mesonbuildfileparser.cpp \
    src/mesonprojectnode.cpp \
    src/mesonprojectpartmanager.cpp \
    src/mesonfilenode.cpp \
    src/mesonfilesubfoldernode.cpp \
    src/mesonproject.cpp \
    src/fixdirectoryparser.cpp \
    src/mesonprojectwizard.cpp

HEADERS += \
    src/ninjamakestep.h \
    src/ninjamakestepconfigwidget.h \
    src/constants.h \
    src/mesonprojectmanagerplugin.h \
    src/mesonbuildinfo.h \
    src/mesonbuildconfiguration.h \
    src/mesonprojectimporter.h \
    src/filelistnode.h \
    src/mesonbuildfileparser.h \
    src/mesonprojectnode.h \
    src/mesonprojectpartmanager.h \
    src/mesonfilenode.h \
    src/mesonfilesubfoldernode.h \
    src/mesonproject.h \
    src/fixdirectoryparser.h \
    src/mesonprojectwizard.h

# Qt Creator linking

## Either set the IDE_SOURCE_TREE when running qmake,
## or set the QTC_SOURCE environment variable, to override the default setting
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = $$(QTC_SOURCE)
isEmpty(IDE_SOURCE_TREE): IDE_SOURCE_TREE = "/home/trilader/code/qt-creator-opensource-src-4.5.1"

## Either set the IDE_BUILD_TREE when running qmake,
## or set the QTC_BUILD environment variable, to override the default setting
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE): IDE_BUILD_TREE = "/home/trilader/code/build-qtcreator-Desktop-Debug"

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on OS X
USE_USER_DESTDIR = yes

###### If the plugin can be depended upon by other plugins, this code needs to be outsourced to
###### <dirname>_dependencies.pri, where <dirname> is the name of the directory containing the
###### plugin's sources.

QTC_PLUGIN_NAME = MesonProjectManager
QTC_LIB_DEPENDS += \
    # nothing here at this time

QTC_PLUGIN_DEPENDS += \
    coreplugin projectexplorer cpptools

QTC_PLUGIN_RECOMMENDS += \
    # optional plugin dependencies. nothing here at this time

###### End _dependencies.pri contents ######

include($$IDE_SOURCE_TREE/src/qtcreatorplugin.pri)

RESOURCES += \
    resources.qrc

DISTFILES += \
    LICENSE.txt \
    README.md
