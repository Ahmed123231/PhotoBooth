import QtQuick 2.15
import "qrc:/qt/qml/PhotoBooth/ui/CameraCaptureButton"
import "qrc:/qt/qml/PhotoBooth/ui/CameraPrintButton"
import "qrc:/qt/qml/PhotoBooth/ui/ResetCameraButton"
import "qrc:/qt/qml/PhotoBooth/ui/QrCanva"
import "qrc:/qt/qml/PhotoBooth/ui/videoCaptureControl"

Rectangle
{
    id: cameraControlPanel
    width: parent.width * 0.21875
    height : parent.height
    color: "black"
    anchors.right: parent.right
    //opacity: 0.1
    CameraCaptureButton{}
    CameraPrintButton{}
    ResetCameraButton{}
    QrCanva{}
    VideoCaptureControlButton{}

}
