import QtQuick 2.15
import "qrc:/qt/qml/PhotoBooth/ui/HomeButton"
Rectangle
{
    id: leftSidePanel
    width: parent.width * 0.21875
    height : parent.height
    color: "black"
    anchors.left: parent.left
    HomeButton{}

}
