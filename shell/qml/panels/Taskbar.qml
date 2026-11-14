import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: root
    signal startClicked()
    signal appLaunched(string name)
    height: 56
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    color: "#1e1f26c9"
    property string clockText: ""

    function updateClock() {
        const d = new Date()
        clockText = d.toLocaleTimeString(Qt.locale("it_IT"), "HH:mm")
            + "\n" + d.toLocaleDateString(Qt.locale("it_IT"), "dd/MM/yyyy")
    }
    Timer {
        interval: 1000; running: true; repeat: true
        onTriggered: root.updateClock()
    }
    Component.onCompleted: updateClock()

    RowLayout {
        anchors.centerIn: parent
        spacing: 4
        Rectangle {
            width: 42; height: 42; radius: 8
            color: startMa.containsMouse ? "#ffffff12" : "transparent"
            Text {
                anchors.centerIn: parent
                text: "P"; color: desktop.accent
                font.pixelSize: 20; font.bold: true
            }
            MouseArea {
                id: startMa; anchors.fill: parent; hoverEnabled: true
                onClicked: root.startClicked()
            }
        }
        Repeater {
            model: ["Esplora File", "Terminale", "PaceAI", "Impostazioni"]
            delegate: Rectangle {
                Layout.preferredWidth: 42; Layout.preferredHeight: 42
                radius: 8; color: ma.containsMouse ? "#ffffff12" : "transparent"
                Text {
                    anchors.centerIn: parent; text: modelData[0]
                    color: "#f2f3f7"; font.pixelSize: 15
                }
                MouseArea {
                    id: ma; anchors.fill: parent; hoverEnabled: true
                    onClicked: root.appLaunched(modelData)
                }
            }
        }
    }
    Row {
        anchors.right: parent.right; anchors.rightMargin: 12
        anchors.verticalCenter: parent.verticalCenter; spacing: 10
        Text { text: "Wi-Fi"; color: desktop.dimText; font.pixelSize: 11 }
        Text { text: "Vol"; color: desktop.dimText; font.pixelSize: 11 }
        Text {
            text: root.clockText; color: "#f2f3f7"
            font.pixelSize: 11.5; horizontalAlignment: Text.AlignRight
        }
    }
}
