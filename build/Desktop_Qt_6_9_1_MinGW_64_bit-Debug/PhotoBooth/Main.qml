// In Main.qml

import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: rootWindow
    visible: true
    width: 1280
    height: 720
    title: "PhotoBooth"

    StackView {
        id: stackView
        anchors.fill: parent

        // Use Qt.resolvedUrl() for a more reliable way to load local files.
        // It resolves the path relative to THIS file (Main.qml).
        initialItem: Qt.resolvedUrl("ui/welcomeScreen/WelcomeScreen.qml")

        Connections {
            target: stackView.currentItem

            onGetStartedClicked: {
                // Use the same method for pushing the next screen.
                stackView.replace(Qt.resolvedUrl("ui/mainAppScreen/MainAppScreen.qml"))
            }
            ignoreUnknownSignals: true
        }
    }
}
