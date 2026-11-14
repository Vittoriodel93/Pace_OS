import QtQuick
import QtQuick.Controls

Rectangle {
    property string appName: "App"
    color: "transparent"
    Column {
        anchors.centerIn: parent; spacing: 8
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: appName; color: desktop.textColor; font.pixelSize: 22
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Contenuto dimostrativo — app prevista nella Fase 2"
            color: desktop.dimText; font.pixelSize: 13
        }
    }
}
