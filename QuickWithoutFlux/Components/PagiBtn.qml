import QtQuick 2.0

Item {
    id: root
    property alias btnText: btnTxt.text
    property string direction: "left"

    signal navigatePage(string direc)
    Text {
        id: btnTxt
        text: "\uf054"
        font.family: "FontAwesome"
        font.pixelSize: 18
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.navigatePage(direction);
            }
        }
    }
}
