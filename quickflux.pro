TEMPLATE = subdirs

CONFIG += ordered

SUBDIRS += libquickflux

BuildTests {
    AddAllTests {
        SUBDIRS +=  tests/quickfluxunittests
    }
}
