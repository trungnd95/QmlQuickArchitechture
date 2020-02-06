import QtQuick 2.0
import "../Components"

Item {
    id: root

    Row {
        anchors.fill: parent
        Repeater {
            model: 5
            MenuItem {
                width: root.width / 5
                height: root.height
            }
        }
    }
}
