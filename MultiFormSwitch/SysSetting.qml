import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    id: sysSettingForm
    Rectangle{
        id: leftPanel
        width: 150
        height: 500
        border.width: 1
        ListView {
            id: sysSettingListView
            anchors.fill: parent

            model: ListModel {
                ListElement{ name: "常规"}
                ListElement{ name: "帮助"}
            }
            delegate: Component{
                Button{
                    id: btn_listItem
                    width: sysSettingListView.width
                    height: 60
                    background: Rectangle{
                        color: btn_listItem.hovered?"lightblue" : "transparent"
                    }
                    text: name
                    font.pixelSize: 18
                    onClicked: {
                        console.log("您点击的是第",index + 1,"项")
                    }
                }
            }

        }
        Component.onCompleted: {
            console.log("sysSettingListView.width = ",sysSettingListView.width)
            console.log("sysSettingListView.height = ",sysSettingListView.height)
        }

    }

    Rectangle{
        id: rightPanel
        anchors.left: leftPanel.right
        width: 500
        height: 500
        border.width: 1
    }


}
