import QtQuick

// We no longer import QtQuick.Controls for this component.

Rectangle {
    id: buttonRoot

    // --- Configuration ---
    // You can expose these properties to change the button's text from outside
    property string text: "Get Started"
    // The signal that will be emitted on click. Use this instead of Button's onClicked.
    signal clicked

    // Internal state properties to track hover and press
    property bool isHovered: mouseArea.containsMouse
    property bool isDown: mouseArea.pressed

    // --- Appearance ---
    width: parent.width * 0.309
    height: (parent.height * 0.1625)/1.5
    radius: 105
    clip: true // Clip contents to the rounded shape

    // The color now responds to our custom state properties
    color: isDown ? "FDF519" : (isHovered ? "#f5ce42" : "#FDF519")
    opacity: enabled ? 1 : 0.3


    // --- Content ---
    Text {
        id: buttonText
        anchors.centerIn: parent
        // Nudging the text slightly to the left to make room for the arrow
        // Adjust the multiplier as needed.
        anchors.horizontalCenterOffset: -(parent.width * 0.07)

        text: buttonRoot.text
        font.pixelSize: (buttonRoot.height * 0.25)*1.5
        font.family: "Inter"
        font.bold: true
        color: "#000000"
    }

    Image {
        id: rightArrow
        width: (parent.width * 0.1011)
        height: (parent.height * 0.341)*1.5
        source: "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/rightArrow.png"

        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: parent.width * 0.08
    }

    // --- Interaction ---
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true // Make sure hover is tracked

        // When the mouse is clicked, emit our custom clicked signal
        onClicked: {
            buttonRoot.clicked()
        }
    }
}
