import QtQuick 2.15



Rectangle{

    id:logoHolder
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 20
    width: parent.width * 0.3125
    height: parent.height * 0.277
    color: "black"
    Image {
        source: "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/avendaLogo.png"
        width: parent.width
        height: parent.height
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 10
        fillMode: Image.PreserveAspectFit
    }


}

