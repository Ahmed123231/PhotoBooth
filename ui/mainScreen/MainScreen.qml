import QtQuick
import QtQuick.Controls
import "qrc:/qt/qml/PhotoBooth/ui/CameraControlPanel"
import "qrc:/qt/qml/PhotoBooth/ui/LeftSidePanel"
// This is the UI for your main application screen.
Rectangle {
    id: mainWindowRoot
    anchors.fill: parent

    // A different background color to make the switch obvious
    color: "#0E0E0E"

    CameraControlPanel{}
    LeftSidePanel{}
    // All your main application components (camera feed, capture button,
    // gallery view, etc.) will go in this file.
}
