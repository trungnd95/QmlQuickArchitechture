import QtQuick 2.0
import PageStore 1.0
import PageActions 1.0

Item {
    id: root
    property bool active: PageStore.activePageIndex === index

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
                PageActions.goToPage(index);
            }
        }
    }
    Component.onCompleted: {
        console.log(PageStore.activePageIndex);
    }
}
