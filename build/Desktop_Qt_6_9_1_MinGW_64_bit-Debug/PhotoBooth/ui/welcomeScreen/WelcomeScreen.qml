import QtQuick
import "../ui/wcScreen"
import "../ui/startButton"
import "../ui/appTitle"
import "../ui/infoIcon"

Rectangle {
    id: welcomeRoot

    // This is the signal that will tell the main window to switch views.
    signal getStartedClicked

    // Change 2: Fill the container (the StackView) instead of having a fixed size.
    anchors.fill: parent

    // The background color is preserved.
    color: "black"

    WcScreen {
        id: logoHolder
        // You may need to adjust the positioning of this now that the parent isn't a fixed-size window.
        // Anchoring to the parent's center is often a good starting point.
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -parent.height * 0.1 // Nudge it up slightly
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
