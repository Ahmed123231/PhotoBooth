import QtQuick

Rectangle{
    id:goBackButtonID
    height: parent.height * 0.0695
    width: parent.width * 0.039
    color: "black"
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.topMargin: parent.height * 0.04167
    anchors.leftMargin:  parent.width * 0.035
    property string text: "GoBackButton"
    // The signal that will be emitted on click. Use this instead of Button's onClicked.
    signal clicked
    Image {
        id: buttonIcon
        anchors.fill: parent
        smooth: true // Improves image quality if scaled

        // --- Core Logic ---
        // Conditionally choose the image source based on the 'toggled' property.
        source: "file:///D:/My Workspace/Qt&QML/Scratch/PhotoBooth/ui/assets/Go_Back.png"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            goBackButtonID.clicked()
        }
    }

}
