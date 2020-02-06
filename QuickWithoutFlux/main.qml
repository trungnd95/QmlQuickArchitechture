import QtQuick 2.12
import QtQuick.Window 2.12
import "Partials"

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QuickWithoutFlux: Old Architechture")

    FontLoader {
        id: fontAwesome
        source: "qrc:/assets/fonts/fontawesome-webfont.ttf"
    }

    Menu {
        id: menu
        width: parent.width
        height: 100
        onPageSelectedIndex: {
            mainContent.setPageId(ind);
        }
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
        onNavigateFwOrB: {
            if (direction == "left") {
                menu.goPrev();
            } else {
                menu.goNext();
            }
            mainContent.setPageId(menu.activeIndex);
        }
    }
}
