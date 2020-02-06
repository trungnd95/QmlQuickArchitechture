import QtQuick 2.0

Item {
    id: root
    property int pageId: 0
    Text {
        anchors.centerIn: parent
        font.pixelSize: 20
        text: "Content of page: " + (pageId + 1)
    }

    function setPageId(id) {
        pageId = id;
    }
}
