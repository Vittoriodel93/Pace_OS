import QtQuick
import QtQuick.Controls

Rectangle {
    width: 420; height: 480; radius: 14
    color: desktop.panelBg
    border.color: "#ffffff17"
    Column {
        anchors.fill: parent; anchors.margins: 16; spacing: 12
        TextField {
            width: parent.width
            placeholderText: "Cerca applicazioni..."
            placeholderTextColor: desktop.dimText
            color: desktop.textColor
            background: Rectangle { color: "#ffffff10"; radius: 6 }
        }
        Label {
            text: "Preferiti"; color: desktop.dimText
            font.pixelSize: 12; font.bold: true
        }
        Grid {
            columns: 3; spacing: 10
            Repeater {
                model: ["Esplora File", "Terminale", "PaceAI", "Impostazioni", "Note", "Foto"]
                delegate: Rectangle {
                    width: 120; height: 82; radius: 8
                    color: appMa.containsMouse ? "#ffffff12" : "transparent"
                    Column {
                        anchors.centerIn: parent; spacing: 6
                        Rectangle {
                            width: 34; height: 34; radius: 8
                            anchors.horizontalCenter: parent.horizontalCenter
                            color: desktop.accentSoft
                            Label {
                                anchors.centerIn: parent; text: modelData[0]
                                color: desktop.accent; font.pixelSize: 15
                            }
                        }
                        Label { text: modelData; color: desktop.textColor; font.pixelSize: 12 }
                    }
                    MouseArea { id: appMa; anchors.fill: parent; hoverEnabled: true }
                }
            }
        }
    }
}
