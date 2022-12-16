import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    id: aboutFormRoot
    color: "#498ff8"
    title: "Base Window"
    flags: Qt.FramelessWindowHint | Qt.Popup
    Button{
        id: testBtn
        anchors.centerIn: parent
        width: 200
        height: 100
        background: Rectangle{
            radius: 10
        }
        text: qsTr("点我关闭")
        font.pixelSize: 22
        font.family: "隶书"

        onClicked: {
            aboutFormRoot.close()
        }


    }
}
