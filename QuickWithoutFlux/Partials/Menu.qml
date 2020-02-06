import QtQuick 2.0
import "../Components"

Item {
    id: root
    property int activeIndex: 0

    signal pageSelectedIndex(real ind)

    Row {
        anchors.fill: parent
        Repeater {
            model: 5
            MenuItem {
                width: root.width / 5
                height: root.height
                active: activeIndex === index
                onPageSelected: {
                    activeIndex = index;
                    root.pageSelectedIndex(activeIndex);
                }
            }
        }
    }

    function goNext() {
        if (activeIndex < 4) {
            activeIndex = activeIndex + 1;
        }
    }

    function goPrev() {
        if(activeIndex > 0) {
            activeIndex = activeIndex - 1;
        }
    }
}
