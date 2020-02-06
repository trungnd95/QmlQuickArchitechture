import QtQuick 2.0
import PageActions 1.0

Item {
    id: root
    property alias btnText: btnTxt.text
    property string direction: "left"

    Text {
        id: btnTxt
        text: "\uf054"
        font.family: "FontAwesome"
        font.pixelSize: 18
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (direction == "left") {
                    PageActions.goPrevPage();
                } else {
                    PageActions.goNextPage();
                }
            }
        }
    }
}
