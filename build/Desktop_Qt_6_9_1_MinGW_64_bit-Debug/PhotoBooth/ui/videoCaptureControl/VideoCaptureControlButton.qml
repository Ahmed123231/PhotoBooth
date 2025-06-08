import QtQuick 2.15

Rectangle
{

    id: videoCaptureControlButton

    property bool toggled: false

    // --- Appearance ---
    width: parent.width * 0.178
    height: parent.height * 0.069

    anchors.horizontalCenter: parent.horizontalCenter

    // Anchor the item's top to the PARENT'S TOP
    anchors.top: parent.top
    // This margin will now correctly push the item down from the top
    anchors.topMargin: 25
    // The color now responds to our custom state properties
    color: "black"



    Image {
        id: buttonIcon
        anchors.fill: parent
        smooth: true // Improves image quality if scaled

        // --- Core Logic ---
        // Conditionally choose the image source based on the 'toggled' property.
        source: videoCaptureControlButton.toggled ? "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/VideoCamOn.png" : "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/VideoCamOffLogo.png"
    }

    // --- Interaction ---
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor // Show a hand cursor on hover

        // When the button is clicked...
        onClicked: {
            // 1. Invert the 'toggled' property's value.
            videoCaptureControlButton.toggled = !videoCaptureControlButton.toggled;

            // 2. Emit the signal with the new state.
            videoCaptureControlButton.toggledChanged(videoCaptureControlButton.toggled);
        }
    }


}
