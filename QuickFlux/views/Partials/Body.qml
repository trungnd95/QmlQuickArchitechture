import QtQuick 2.0
import PageStore 1.0
Item {
    id: root

    Text {
        anchors.centerIn: parent
        font.pixelSize: 20
        text: "Content of page: " + (PageStore.activePageIndex + 1)
    }
}
