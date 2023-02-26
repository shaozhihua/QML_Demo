import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    id: subWindowRoot
    visible: true
    flags: Qt.Popup
    width: 1280
    height: 720
    signal haha()

    Button{
        id: backBtn
        x: 40
        y: 40
        width: 200
        height: 100
        text: "点我返回"
        onClicked: {
            subWindowRoot.haha()
        }

    }

    Connection{

    }

}
