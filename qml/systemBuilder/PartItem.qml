import QtQuick 2.0

Component {
    id: partItemDelegate

    Rectangle {
        id: wrapper
//        opacity: 0.5
        width: parent.width
        height: 30

        radius: 5
        border.color: "#888888"
        gradient: Gradient {
            GradientStop { position: 0; color: "white" }
            GradientStop { position: 1; color: "#EEEEEE"}
        }

        Text {
            text: name
            x: 5
            color: wrapper.ListView.isCurrentItem ? "orange" : "black"
            anchors.verticalCenter: parent.verticalCenter
        }

        MouseArea {
            id: area
            anchors.fill: parent
            onClicked: wrapper.ListView.view.currentIndex = index
        }
    }
}
