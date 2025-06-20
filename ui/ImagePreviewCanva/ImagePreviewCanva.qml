import QtQuick 2.15



Rectangle{
    id:imagePreviewCanvaId
    width: parent.width * 0.714
    height: parent.height * 0.278
    color: "beige"
    anchors.top: parent.top
    anchors.topMargin: parent.height * 0.639
    anchors.horizontalCenter: parent.horizontalCenter

    property string text: "GoToGenImgs"
    // The signal that will be emitted on click. Use this instead of Button's onClicked.
    signal clicked

    MouseArea{
        anchors.fill: parent
        onClicked: {
            imagePreviewCanvaId.clicked()
        }
    }

}
