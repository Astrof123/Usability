import Felgo
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

App {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    property int defMargin:10

    header:ToolBar{
        id:page_header
        height:40
        RowLayout {
            ToolButton {
                id:back_btn
                Text {
                    text: "<-"
                    font.pixelSize: 24
                    visible:stack_view.depth>1
                    anchors.verticalCenter: parent.verticalCenter}
                onClicked: {
                    stack_view.pop(defaultpage)
                }
            }
            Text{
                id:header_page_text
                anchors.centerIn: page_header
            }
        }
    }

    StackView{
        id:stack_view
        anchors.fill: parent
        initialItem: defaultpage
    }

    My_Page {
        id: defaultpage
        backgroundColor: "light gray"
        buttonTextLeft: "To_Green"
        buttonTextRight: "To_Yellow"
        onLeftButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(greenpage)
        }
        onRightButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(yellowpage)
        }

        Text {
            text: 'QML_6. Stack_View'
            font.pixelSize: 24
        }


        Button {
            id:button_nav_left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.margins: defMargin // look into main.qml
            text: "To_Red"
            onClicked: {
                stack_view.pop(defaultpage)
                stack_view.push(redpage)
            }
        }
    }

    My_Page {
        id: redpage
        backgroundColor: "red"
        buttonTextLeft: "To_Green"
        buttonTextRight: "To_Yellow"
        onLeftButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(greenpage)
        }
        onRightButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(yellowpage)
        }

    }
    My_Page {
        id: greenpage
        backgroundColor: "green"
        buttonTextLeft: "To_Yellow"
        buttonTextRight: "To_Red"
        onLeftButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(yellowpage)
        }
        onRightButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(redpage)
        }
    }
    My_Page {
        id: yellowpage
        backgroundColor: "yellow"
        buttonTextLeft: "To_Red"
        buttonTextRight: "To_Green"
        onLeftButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(redpage)
        }
        onRightButtonClicked: {
            stack_view.pop(defaultpage)
            stack_view.push(greenpage)
        }
    }
}
