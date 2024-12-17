import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page {
    id:root
    property alias backgroundColor:back_fon.color
    property alias buttonTextRight:button_nav_right.text
    property alias buttonTextLeft:button_nav_left.text
    signal leftButtonClicked();
    signal rightButtonClicked();

    background: Rectangle{
        id:back_fon
    }
    Button {
        id:button_nav_right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.rightButtonClicked()
        }
    }
    Button {
        id:button_nav_left
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin // look into main.qml
        onClicked: {
            root.leftButtonClicked()
        }
    }
}
