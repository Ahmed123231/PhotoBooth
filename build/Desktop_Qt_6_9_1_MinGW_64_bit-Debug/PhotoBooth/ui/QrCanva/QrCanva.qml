import QtQuick 2.15

Rectangle {
    id: qrCanva


    // --- Appearance ---
    width: parent.width * 0.814
    height: parent.height * 0.317
    clip: true // Clip contents to the rounded shape
    anchors.horizontalCenter: parent.horizontalCenter


    // Anchor the item's top to the PARENT'S TOP
    anchors.top: parent.top
    // This margin will now correctly push the item down from the top
    anchors.topMargin: parent.height * 0.639
    // The color now responds to our custom state properties
    color: D9D9D9

}
