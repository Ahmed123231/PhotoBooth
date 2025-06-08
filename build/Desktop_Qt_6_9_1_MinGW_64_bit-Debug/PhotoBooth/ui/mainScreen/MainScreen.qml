import QtQuick
import QtQuick.Controls

// This is the UI for your main application screen.
Rectangle {
    id: mainWindowRoot
    anchors.fill: parent

    // A different background color to make the switch obvious
    color: "#EFEFEF"

    Text {
        anchors.centerIn: parent
        text: "This is the Main Window!"
        font.pixelSize: 24
        font.bold: true
        color: "#333"
    }

    // All your main application components (camera feed, capture button,
    // gallery view, etc.) will go in this file.
}
