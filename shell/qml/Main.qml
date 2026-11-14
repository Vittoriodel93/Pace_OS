import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "panels"
import "windows"
import "apps"

Window {
    id: desktop
    width: 1600
    height: 900
    visible: true
    title: "PaceOS"
    color: "#101116"
    readonly property color accent: "#2b6ef2"
    readonly property color accentSoft: "#2b6ef229"
    readonly property color panelBg: "#26272dc9"
    readonly property color textColor: "#f2f3f7"
    readonly property color dimText: "#f2f3f79e"
    property int __zCounter: 10

    ListModel { id: windowsModel }

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#3a4a7a" }
            GradientStop { position: 0.55; color: "#1d2540" }
            GradientStop { position: 1.0; color: "#0d1020" }
        }
    }

    Repeater {
        model: windowsModel
        delegate: WindowFrame {
            winTitle: title
            winX: x; winY: y; winW: w; winH: h; winZ: z
            onClosed: windowsModel.remove(index)
            contentComponent: Component { Placeholder { appName: title } }
        }
    }

    Column {
        x: 14; y: 14; spacing: 6
        Repeater {
            model: ["Questo PC", "Cestino", "Documenti"]
            delegate: Rectangle {
                width: 88; height: 84; radius: 8; color: "transparent"
                Column {
                    anchors.centerIn: parent; spacing: 4
                    Rectangle {
                        width: 34; height: 28; radius: 4
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: index === 1 ? "transparent" : "#fbbf24"
                        border.color: "#a16207"; visible: index !== 1
                    }
                    Text { text: modelData; color: "#fff"; font.pixelSize: 12 }
                }
                MouseArea {
                    anchors.fill: parent
                    onDoubleClicked: windowsModel.append({
                        appId: "explorer", title: modelData,
                        x: 120 + windowsModel.count * 32,
                        y: 80 + windowsModel.count * 24,
                        w: 860, h: 540, z: windowsModel.count + 1
                    })
                }
            }
        }
    }

    StartMenu {
        id: startMenu
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: taskbar.top
        anchors.bottomMargin: 8
        visible: false
    }
    Taskbar {
        id: taskbar
        onStartClicked: startMenu.visible = !startMenu.visible
        onAppLaunched: function(name) {
            windowsModel.append({
                appId: name, title: name,
                x: 120 + windowsModel.count * 32,
                y: 80 + windowsModel.count * 24,
                w: 860, h: 540, z: windowsModel.count + 1
            })
        }
    }
}
