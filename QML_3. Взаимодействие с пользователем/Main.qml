import Felgo
import QtQuick
import QtQuick.Layouts

App {
    id: app
    width: 640
    height: 480
    visible: true

    property int myMargin:10
    minimumWidth:cl.implicitWidth+2*myMargin

    ColumnLayout{
        id: cl
        anchors.fill:parent
        // width: parent.width

        Rectangle {
            id: header
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: app.height * 0.15
            color: 'light gray'

            Text {
                id: header_text
                text: 'Header'
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: main
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: app.height * 0.70
            color: 'Alice blue'

            Text {
               id: main_text
               text: qsTr("Some content")
               anchors.centerIn: parent
            }

        }

        Rectangle {
            id: footer
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: app.height * 0.15

            RowLayout {
                anchors.fill:parent

                Rectangle {
                    id: footer1
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: 'light gray'
                    Text {
                        id: footer1_text
                        text: qsTr("Footer 1")
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id:mouse
                        hoverEnabled: true
                        anchors.fill: parent
                        onPressed: {header_text.text = "Header_1"; main_text.text = "Item 1"; footer1.opacity = 1; footer2.opacity = 0.3; footer3.opacity = 0.3;}
                    }
                }

                Rectangle {
                    id: footer2
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: 'light gray'

                    Text {
                        id: footer2_text
                        text: qsTr("Footer 2")
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouse2
                        hoverEnabled: true
                        anchors.fill: parent
                        onPressed: {header_text.text = "Header_2"; main_text.text = "Item 2"; footer1.opacity = 0.3; footer2.opacity = 1; footer3.opacity = 0.3;}
                    }
                }

                Rectangle {
                    id: footer3
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: 'light gray'

                    Text {
                        id: footer3_text
                        text: qsTr("Footer 3")
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        id: mouse3
                        hoverEnabled: true
                        anchors.fill: parent
                        onPressed: {header_text.text = "Header_3"; main_text.text = "Item 3"; footer1.opacity = 0.3; footer3.opacity = 1; footer2.opacity = 0.3;}
                    }
                }
            }
        }

    }
}
