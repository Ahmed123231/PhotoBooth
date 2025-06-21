import QtQuick
import QtQuick.Controls
import "qrc:/qt/qml/PhotoBooth/ui/CameraControlPanel"
import "qrc:/qt/qml/PhotoBooth/ui/LeftSidePanel"
import "qrc:/qt/qml/PhotoBooth/ui/CameraPreviewCanva"

// This is the UI for your main application screen.
Rectangle {
    id: mainWindowRoot
    anchors.fill: parent

    // A different background color to make the switch obvious
    color: "#0E0E0E"
    signal homeButtonClicked
    signal goToGenImgsClicked

    CameraControlPanel{}
    LeftSidePanel{
        onHomeButtonClicked: mainWindowRoot.homeButtonClicked()
        onGoToGenImgsClicked: mainWindowRoot.goToGenImgsClicked()
    }
    CameraPreviewCanva{
        anchors.right: cameraControlPanel.left
        anchors.left: leftSidePanel.right
    }
    // All your main application components (camera feed, capture button,
    // gallery view, etc.) will go in this file.
}
