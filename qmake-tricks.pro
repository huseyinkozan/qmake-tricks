TEMPLATE = subdirs


# define sub-project names
SUBDIRS += \
    sharedlib \
    staticlib \
    consoleapp \
    guiapp


# to add same dir project
# SUBDIRS += app.pro        


# Sub project dirs:
sharedlib.subdir    = apps/SharedLib
staticlib.subdir    = apps/StaticLib
consoleapp.subdir   = apps/ConsoleApp
guiapp.subdir       = apps/GuiApp


# Dependency
consoleapp.depends  = staticlib
guiapp.depends      = sharedlib staticlib


# projects will build ordered, 
# usefull if depency not given
CONFIG  += ordered
