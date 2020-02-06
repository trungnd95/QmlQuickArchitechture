import QtQuick 2.12
import QtQuick.Window 2.12
import "views/Partials"

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Quick: Flux Architechture")

    FontLoader {
        id: fontAwesome
        source: "qrc:/assets/fonts/fontawesome-webfont.ttf"
    }

    Menu {
        id: menu
        width: parent.width
        height: 100
    }

    Body {
        id: mainContent
        anchors { top: menu.bottom; left: parent.left; right: parent.right; bottom: footer.top }
    }

    Footer {
        id: footer
        height: 50
        width: parent.width
        anchors.bottom: parent.bottom
    }
}
