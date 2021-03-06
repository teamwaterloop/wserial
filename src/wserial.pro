#-------------------------------------------------
#
# Project created by QtCreator 2017-12-16T15:45:19
#
#-------------------------------------------------

QT       += core gui serialport charts testlib

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = wserial
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    plotterview.cpp \
    worker.cpp

test {
    SOURCES -= main.cpp
    SOURCES += tests/test.cpp

    HEADERS += tests/test.h

    TARGET = test

    QMAKE_CXXFLAGS += -g -Wall -fprofile-arcs -ftest-coverage -O0

    QMAKE_LFLAGS += -g -Wall -fprofile-arcs -ftest-coverage  -O0

    LIBS += -lgcov
}

HEADERS += \
        mainwindow.h \
    plotterview.h \
    worker.h

FORMS += \
        mainwindow.ui \
    plotterview.ui

RESOURCES = resources.qrc
