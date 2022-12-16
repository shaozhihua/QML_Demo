import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.5

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("多界面切换")

    Button{
        id: testBtn
        x: 510
        y: 300
        width: 200
        height: 100
        background: Rectangle{
            border.width: 2
            color: "gray"
            //border.color: "red"
        }
        text: "按钮"
        font.pixelSize: 24
    }

    CustomBorderRec
    {
        id: testRec
        anchors.left: testBtn.right
        anchors.leftMargin: 40
        anchors.top: testBtn.top
        width : 200
        height: 100

        lBorderwidth: 2
        rBorderwidth: 2
        tBorderwidth: 0
        bBorderwidth: 0
        borderColor: "black"


    }

    Rectangle{
        id: myMenuBar
        x: 0
        y: 0
        width: parent.width
        height: 50
        color: "lightblue"
        Row {
            anchors.fill: parent
            Button{
                id: menu_File
                width: 80
                height: parent.height
                background: Rectangle{
                    color: menu_File.hovered ? "#5D5E5F": "transparent"
                }
                Text {
                    anchors.fill: parent
                    text: qsTr("文件")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: menu_File.hovered ? "white": "black"
                    font.pixelSize: 20
                }
                onClicked: {
                    //show new form
                    openFileForm.visible = true

                }
            }
            Button{
                id: menu_Setting
                width: 80
                height: parent.height
                background: Rectangle{
                    color: menu_Setting.hovered ? "#5D5E5F": "transparent"
                }
                Text {
                    anchors.fill: parent
                    text: qsTr("设置")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: menu_Setting.hovered ? "white": "black"
                    font.pixelSize: 20
                }
                onClicked: {
                    sysSettingForm.visible = true
                }
            }
            Button{
                id: menu_About
                width: 80
                height: parent.height
                background: Rectangle{
                    color: menu_About.hovered ? "#5D5E5F": "transparent"
                }
                Text {
                    anchors.fill: parent
                    text: qsTr("关于")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: menu_About.hovered ? "white": "black"
                    font.pixelSize: 20
                }
                onClicked: {
                    aboutForm.visible = true
                }
            }

        }

    }
    OpenFileForm {
            id: openFileForm
            width: 300
            height: 350
            visible: false
        }
    AboutForm {
        id: aboutForm
        x: 300
        y: 600
        width: 500
        height: 350
        visible: false

    }

    SysSetting {
        id: sysSettingForm
        anchors.centerIn: parent
        width: 150
        height: 500
        visible: false
    }


}
