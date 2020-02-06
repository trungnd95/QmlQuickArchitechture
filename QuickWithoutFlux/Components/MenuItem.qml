import QtQuick 2.0

Item {
    id: root
    property bool active: false
    signal pageSelected()

    Rectangle {
        anchors.fill: parent
        border.width: 1
        border.color: "red"
        color: active ? "blue" : "transparent"

        Text {
            text: "Page " + (index + 1)
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.pageSelected();
            }
        }
    }
}
