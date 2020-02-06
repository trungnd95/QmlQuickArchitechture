import QtQuick 2.0
import "../Components"

Item {
    id: root

    Row {
        height: parent.height
        anchors.centerIn: parent
        spacing: 10

        PagiBtn {
            btnText: "\uf053"
            width: 50
            height: parent.height
        }

        PagiBtn {
            btnText: "\uf054"
            width: 50
            height: parent.height
            direction: "right"
        }
    }
}
