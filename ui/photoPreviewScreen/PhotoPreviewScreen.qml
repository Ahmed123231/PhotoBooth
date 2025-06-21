import QtQuick 2.15
import "qrc:/qt/qml/PhotoBooth/ui/GenImgOneCanva"
import "qrc:/qt/qml/PhotoBooth/ui/GenImgTwoCanva"
import "qrc:/qt/qml/PhotoBooth/ui/GoBackButton"

Rectangle {
    id: photoPreviewScreen
    anchors.fill: parent
    color: "black"
    signal goBackButtonClicked


    GenImgOneCanva{}
    GenImgTwoCanva{}
    GoBackButton{
        onClicked: photoPreviewScreen.goBackButtonClicked()
    }
    Text{
        id:photoPreviewPageTitleId
        color : "#FFFFFF"
        font.family: "inter"
        font.pixelSize: 48
        font.bold: true
        font.italic : true
        text: "Choose an Image"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: parent.height *0.0569
        anchors.leftMargin: parent.width * 0.345
    }

}
