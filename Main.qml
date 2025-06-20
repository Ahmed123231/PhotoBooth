import QtQuick
import QtQuick.Controls
import "ui/welcomeScreen"
import "ui/mainScreen"
import "ui/photoPreviewScreen"


ApplicationWindow {
    id: rootWindow
    visible: true
    width: 1280
    height: 720
    title: "aevenda PhotoBooth"

    StackView {
        id: stackView
        anchors.fill: parent


        // --- CORRECTED PATHS ---
        // Add the full prefix that the build system is using.
        initialItem: "qrc:/qt/qml/PhotoBooth/ui/welcomeScreen/WelcomeScreen.qml"
        replaceEnter: Transition {}
        replaceExit: Transition {}

        Connections {
            target: stackView.currentItem

            onGetStartedClicked: {
                stackView.replace("qrc:/qt/qml/PhotoBooth/ui/mainScreen/MainScreen.qml")
            }

            onHomeButtonClicked: {
                stackView.replace("qrc:/qt/qml/PhotoBooth/ui/welcomeScreen/WelcomeScreen.qml")
            }
            onGoBackButtonClicked:{
                stackView.replace("qrc:/qt/qml/PhotoBooth/ui/mainScreen/MainScreen.qml")
            }
            onGoToGenImgsClicked:{
                stackView.replace("qrc:/qt/qml/PhotoBooth/ui/photoPreviewScreen/PhotoPreviewScreen.qml")
            }

            ignoreUnknownSignals: true
        }
    }




}
