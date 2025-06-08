import QtQuick 2.15

Rectangle
{

    id: homeButton

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
        source: "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/home_Icon.png"
    }

    // --- Interaction ---
    MouseArea {

    }


}
