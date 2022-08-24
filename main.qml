import QtQuick 6
import QtQuick.Window 6
import QtQuick.Timeline 1.0
import QtQuick.Controls 6
import QtQuick.Layouts 1.15
import QtQuick.Dialogs
//import Qt.labs.platform


ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Data Viewer")

    Text {
        id: title
        text: qsTr("Data Viewer")
        color: "white"
        font.pointSize: 32
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 80
    }

    MenuItem {
        text: "Open..."
        onTriggered: fileDialog.open()
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: title.bottom
        anchors.topMargin: 80
    }

    FileDialog {
        id: fileDialog
//        currentFile: document.source
        currentFile: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
    }

}
