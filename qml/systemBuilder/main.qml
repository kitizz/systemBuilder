import QtQuick 2.0

Rectangle {
    width: 360
    height: 360

    ListModel {
        id: listModel
        ListElement { name: "Test"; bazooka: "Yup"}
        ListElement { name: "Part2"; bazooka: "Nope"}
        ListElement { name: "Item 3"; bazooka: "Bleergghhh"}
    }

    ListView {
        anchors.fill: parent
        model: listModel
        delegate: PartItem{}
        highlight: Rectangle {
            width: parent.width
            color: "orange"
        }
    }
}
