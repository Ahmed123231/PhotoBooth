import QtQuick 2.15

Rectangle {
    id: resetCameraButton

    // Internal state properties to track hover and press
    property bool isHovered: mouseArea.containsMouse
    property bool isDown: mouseArea.pressed

    // --- Appearance ---
    width:  parent.width * 0.910
    height: parent.height * .12
    radius: 40
    clip: true // Clip contents to the rounded shape
    anchors.horizontalCenter: parent.horizontalCenter


    // Anchor the item's top to the PARENT'S TOP
    anchors.top: parent.top

    // This margin will now correctly push the item down from the top
    anchors.topMargin : parent.height  * 0.486
    // The color now responds to our custom state properties
    color: isDown ? "#FFC430" : (isHovered ? "#6e5803" : "#FFC430")
    opacity: enabled ? 1 : 0.3

    Image {
        id: rightArrow
        width: parent.width * 0.188
        height: parent.height * 0.6
        source: "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/Reset_Icon.png"

        anchors.centerIn: parent
    }

    // --- Interaction ---
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true // Make sure hover is tracked

        // When the mouse is clicked, emit our custom clicked signal
        onClicked: {
        }
    }
}
