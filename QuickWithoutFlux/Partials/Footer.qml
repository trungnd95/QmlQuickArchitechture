import QtQuick 2.0
import "../Components"

Item {
    id: root
    signal navigateFwOrB(string direction)
    Row {
        height: parent.height
        anchors.centerIn: parent
        spacing: 10

        PagiBtn {
            btnText: "\uf053"
            width: 50
            height: parent.height
            onNavigatePage: {
                root.navigateFwOrB(direc);
            }
        }

        PagiBtn {
            btnText: "\uf054"
            width: 50
            height: parent.height
            direction: "right"
            onNavigatePage: {
                root.navigateFwOrB(direc);
            }
        }
    }
}
