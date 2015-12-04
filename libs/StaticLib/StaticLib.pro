
# Pack generated files in a dir
OBJECTS_DIR =$$OUT_PWD/generated
MOC_DIR     =$$OUT_PWD/generated
UI_DIR      =$$OUT_PWD/generated
RCC_DIR     =$$OUT_PWD/generated


CONFIG(debug, debug|release) {

    # add debug suffix to target
     mac: TARGET = $$join(TARGET,,,_debug)
     win32: TARGET = $$join(TARGET,,,d)

    # increase msvc compiler verbosity
    win32-msvc*: QMAKE_LIBFLAGS += /VERBOSE
    unix: QMAKE_AR += -v
}