import QtQuick 2.15
import "qrc:/qt/qml/PhotoBooth/ui/HomeButton"
import "qrc:/qt/qml/PhotoBooth/ui/ImagePreviewCanva"
Rectangle
{
    id: leftSidePanel
    width: parent.width * 0.21875
    height : parent.height
    color: "black"
    anchors.left: parent.left
    signal homeButtonClicked
    HomeButton{
        id: homeButton
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: leftSidePanel.homeButtonClicked()
    }
    ImagePreviewCanva{}

}
