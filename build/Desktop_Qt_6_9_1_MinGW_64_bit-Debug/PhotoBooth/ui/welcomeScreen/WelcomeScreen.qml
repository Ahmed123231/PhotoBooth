import QtQuick
import "qrc:/qt/qml/PhotoBooth/ui/wcScreen/"
import "qrc:/qt/qml/PhotoBooth/ui/startButton/"
import "qrc:/qt/qml/PhotoBooth/ui/appTitle/"
import "qrc:/qt/qml/PhotoBooth/ui/infoIcon/"

Rectangle {
    id: welcomeRoot

    // This is the signal that will tell the main window to switch views.
    signal getStartedClicked

    anchors.fill: parent

    // The background color is preserved.
    color: "black"

    WcScreen {
        id: logoHolder
        //anchors.centerIn: parent
        //anchors.verticalCenterOffset: -parent.height * 0.1 // Nudge it up slightly
    }

    StartButton {
        id: myStartButton
        anchors.horizontalCenter: logoHolder.horizontalCenter
        anchors.top: logoHolder.bottom
        // Change 3: Updated ID from 'window' to 'welcomeRoot'
        anchors.topMargin: welcomeRoot.height * 0.2778

        // Change 4: When this button is clicked, it now emits our signal.
        onClicked: {
            welcomeRoot.getStartedClicked()
        }
    }

    AppTitle {
        anchors.horizontalCenter: logoHolder.horizontalCenter
        anchors.top: logoHolder.bottom
        // Change 3: Updated ID from 'window' to 'welcomeRoot'
        anchors.topMargin: welcomeRoot.height * 0.069
    }

    // Change 5: Positioned the InfoButton in the bottom-left corner as discussed.
    InfoButton {
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20 // A 20-pixel margin from the edges
    }
}
