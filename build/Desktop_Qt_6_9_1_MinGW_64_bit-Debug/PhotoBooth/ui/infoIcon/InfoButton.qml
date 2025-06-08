import QtQuick 2.15

Rectangle
{
    id:infoButton
    // --- CORRECTED ANCHORING ---
    // 1. Anchor the item's left edge to the parent's left edge
    anchors.left: parent.left
    // 2. Set the margin to push the item 5 pixels to the right
    anchors.leftMargin: 10

    // 3. Anchor the item's bottom edge to the parent's bottom edge
    anchors.bottom: parent.bottom
    // 4. Set the margin to push the item 5 pixels up
    anchors.bottomMargin: 10
    // --- END CORRECTION ---
    width: parent.width * 0.039
    height: parent.height * 0.0694
    color : "black"
    Image {
        id: infoIcon
        source: "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/infoIcon.png"
        anchors.fill: parent
    }


}
