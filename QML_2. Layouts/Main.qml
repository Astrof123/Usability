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
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),0.7)

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
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),0.7)

            Text {
               id: main_text
               text: qsTr("Main")
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
                    color:Qt.rgba(Math.random(),Math.random(),Math.random(),0.7)
                    Text {
                        id: footer1_text
                        text: qsTr("Footer 1")
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    id: footer2
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color:Qt.rgba(Math.random(),Math.random(),Math.random(),0.7)

                    Text {
                        id: footer2_text
                        text: qsTr("Footer 2")
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    id: footer3
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color:Qt.rgba(Math.random(),Math.random(),Math.random(),0.7)

                    Text {
                        id: footer3_text
                        text: qsTr("Footer 3")
                        anchors.centerIn: parent
                    }
                }
            }
        }

    }
}
