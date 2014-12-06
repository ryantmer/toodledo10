# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        } else {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

config_pri_assets {
    OTHER_FILES += \
        $$quote($$BASEDIR/assets/About.qml) \
        $$quote($$BASEDIR/assets/AddEditFolder.qml) \
        $$quote($$BASEDIR/assets/AddEditTask.qml) \
        $$quote($$BASEDIR/assets/CompletedTasks.qml) \
        $$quote($$BASEDIR/assets/Cover.qml) \
        $$quote($$BASEDIR/assets/FolderMain.qml) \
        $$quote($$BASEDIR/assets/Login.qml) \
        $$quote($$BASEDIR/assets/Settings.qml) \
        $$quote($$BASEDIR/assets/TaskMain.qml) \
        $$quote($$BASEDIR/assets/images/ic_add.png) \
        $$quote($$BASEDIR/assets/images/ic_info.png) \
        $$quote($$BASEDIR/assets/images/ic_reload.png) \
        $$quote($$BASEDIR/assets/images/ic_save.png) \
        $$quote($$BASEDIR/assets/images/ic_settings.png)
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/FolderDataModel.cpp) \
        $$quote($$BASEDIR/src/FolderSenderReceiver.cpp) \
        $$quote($$BASEDIR/src/LoginManager.cpp) \
        $$quote($$BASEDIR/src/NetworkManager.cpp) \
        $$quote($$BASEDIR/src/PropertiesManager.cpp) \
        $$quote($$BASEDIR/src/TaskDataModel.cpp) \
        $$quote($$BASEDIR/src/TaskSenderReceiver.cpp) \
        $$quote($$BASEDIR/src/ToodleDoTen.cpp) \
        $$quote($$BASEDIR/src/main.cpp)

    HEADERS += \
        $$quote($$BASEDIR/src/FolderDataModel.hpp) \
        $$quote($$BASEDIR/src/FolderSenderReceiver.hpp) \
        $$quote($$BASEDIR/src/LoginManager.hpp) \
        $$quote($$BASEDIR/src/NetworkManager.hpp) \
        $$quote($$BASEDIR/src/PropertiesManager.hpp) \
        $$quote($$BASEDIR/src/TaskDataModel.hpp) \
        $$quote($$BASEDIR/src/TaskSenderReceiver.hpp) \
        $$quote($$BASEDIR/src/ToodleDoTen.hpp)
}

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx) \
        $$quote($$BASEDIR/../assets/*.qml) \
        $$quote($$BASEDIR/../assets/*.js) \
        $$quote($$BASEDIR/../assets/*.qs) \
        $$quote($$BASEDIR/../assets/images/*.qml) \
        $$quote($$BASEDIR/../assets/images/*.js) \
        $$quote($$BASEDIR/../assets/images/*.qs)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}.ts)
