
#
# If you need an user configured pri file:
#   * add pri file to .gitignore,
#   * warn user to copy sample to create a new one after clone
#
!include($$PWD/GuiApp-config.pri) {
    error(No config file. Copy GuiApp-config-sample.pri and fill it.)
}

#
# Fill VERSION variable in Version.in file 
# and copy it to build dir as Version file
#
QMAKE_SUBSTITUTES += Version.in


#
# To see in QtCreator
#
OTHER_FILES += $$PWD/GuiApp-config-sample.pri