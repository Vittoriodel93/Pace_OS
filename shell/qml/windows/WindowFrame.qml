import QtQuick
import QtQuick.Controls

Rectangle {
    id: frame
    property string winTitle: "Finestra"
    property int winX: 100
    property int winY: 80
    property int winW: 860
    property int winH: 540
    property int winZ: 1
    property Component contentComponent
    signal closed()
    width: winW; height: winH; z: winZ
    radius: 10; color: "#202128e6"; border.color: "#ffffff17"
    Component.onCompleted: { x = winX; y = winY }

    Column {
        anchors.fill: parent; spacing: 0
        Rectangle {
            width: parent.width; height: 38; color: "transparent"
            Label {
                anchors.left: parent.left; anchors.leftMargin: 14
                anchors.verticalCenter: parent.verticalCenter
                text: frame.winTitle; color: desktop.dimText; font.pixelSize: 12.5
            }
            Row {
                anchors.right: parent.right; anchors.verticalCenter: parent.verticalCenter
                spacing: 2
                Button {
                    width: 46; height: 30; flat: true; text: "—"
                    onClicked: frame.visible = false
                }
                Button {
                    width: 46; height: 30; flat: true; text: "▢"
                    onClicked: {
                        if (frame.width < desktop.width) {
                            frame.x = 0; frame.y = 0
                            frame.width = desktop.width
                            frame.height = desktop.height - 56
                        } else {
                            frame.width = winW; frame.height = winH
                            frame.x = winX; frame.y = winY
                        }
                    }
                }
                Button { width: 46; height: 30; flat: true; text: "✕"; onClicked: frame.closed() }
            }
            MouseArea {
                anchors.fill: parent; drag.target: frame
                drag.minimumX: 0; drag.minimumY: 0
                drag.maximumX: desktop.width - 60; drag.maximumY: desktop.height - 100
                onPressed: frame.z = ++desktop.__zCounter
            }
        }
        Rectangle {
            width: parent.width; height: parent.height - 38; color: "transparent"
            Loader { anchors.fill: parent; sourceComponent: frame.contentComponent }
        }
    }
}
