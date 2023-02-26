import QtQuick 2.12
import QtQuick.Controls 2.5

Item
{
    property alias color: innerRect.color

    property alias borderColor : borderBtnBackGround.color
    property int borderWidth: 0

    property int lBorderwidth : borderWidth
    property int rBorderwidth : borderWidth
    property int tBorderwidth : borderWidth
    property int bBorderwidth : borderWidth

    Rectangle{
        id: borderBtnBackGround

    }
    visible: false
    Button
    {
        property alias btnBorderColor: borderBtn
        id: borderBtn
        anchors.fill: parent
        background: borderBtnBackGround
        text: qsTr("按钮")
        font.pixelSize: 24


        Rectangle
        {
            id: innerRect
            color: borderBtn.hovered ? (borderBtn.down? "orange": "lightblue") : "white"
            anchors {
                fill: parent
                leftMargin: lBorderwidth
                rightMargin: rBorderwidth
                topMargin: tBorderwidth
                bottomMargin: bBorderwidth
            }
        }
    }
}
