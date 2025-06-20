cmake_minimum_required(VERSION 3.16)

project(PhotoBooth VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appPhotoBooth
    main.cpp
)

qt_add_qml_module(appPhotoBooth
    URI PhotoBooth
    VERSION 1.0
    QML_FILES
        Main.qml
        ui/wcScreen/WcScreen.qml
        QML_FILES ui/startButton/StartButton.qml
        QML_FILES ui/appTitle/AppTitle.qml
        QML_FILES ui/infoIcon/InfoButton.qml
        QML_FILES ui/welcomeScreen/WelcomeScreen.qml
        QML_FILES ui/mainScreen/MainScreen.qml
        QML_FILES ui/CameraControlPanel/CameraControlPanel.qml
        QML_FILES ui/CameraCaptureButton/CameraCaptureButton.qml
        QML_FILES ui/CameraPrintButton/CameraPrintButton.qml
        QML_FILES ui/ResetCameraButton/ResetCameraButton.qml
        QML_FILES ui/QrCanva/QrCanva.qml
        QML_FILES ui/videoCaptureControl/VideoCaptureControlButton.qml
        QML_FILES ui/LeftSidePanel/LeftSidePanel.qml
        QML_FILES ui/HomeButton/HomeButton.qml
        QML_FILES ui/ImagePreviewCanva/ImagePreviewCanva.qml
        QML_FILES ui/photoPreviewScreen/PhotoPreviewScreen.qml
        QML_FILES ui/GenImgOneCanva/GenImgOneCanva.qml
        QML_FILES ui/GenImgTwoCanva/GenImgTwoCanva.qml
        QML_FILES ui/GoBackButton/GoBackButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appPhotoBooth PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appPhotoBooth
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appPhotoBooth
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appPhotoBooth
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
