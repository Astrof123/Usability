import Felgo
import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.Controls
import QtCharts 2.4

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


        states: [
            State {
                name: "state0"
            },
            State {
                name: "state1"
            },
            State {
                name: "state2"
                PropertyChanges { target: mainRect; color: "red" }
            },
            State {
                name: "state3"
                PropertyChanges { target: mainRect; color: "red" }
            }
        ]

        transitions: [
            Transition {
                from: "state0"
                to: "state1"

                PropertyAnimation{
                    target: main_text;
                    property: "text"; to: "Item 1"
                    duration: 300
                    running:true
                }

                PropertyAnimation{
                    target: header_text;
                    property: "text"; to: "Header 1"
                    duration: 300
                    running:true
                }

                PropertyAnimation{
                    target: footer2; property: "opacity"; from: 1; to: 0.3
                    duration: 500
                    running:true
                }

                PropertyAnimation{
                    target: footer3; property: "opacity"; from: 1; to: 0.3
                    duration: 500
                    running:true
                }
            },
            Transition {
                from: "state1"
                to: "state0"

                PropertyAnimation{
                    target: main_text;
                    property: "text"; to: "Some content"
                    duration: 300
                    running:true
                }

                PropertyAnimation{
                    target: header_text;
                    property: "text"; to: "Header"
                    duration: 300
                    running:true
                }

                PropertyAnimation{
                    target: footer2; property: "opacity"; to: 1;
                    duration: 500
                    running:true
                }

                PropertyAnimation{
                    target: footer3; property: "opacity"; to: 1;
                    duration: 500
                    running:true
                }
            },
            Transition {
                from: "state1"
                to: "state2"

                PropertyAnimation{ target: main_text;property: "text"; to: "Main 2"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header 2"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 0.3; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 0.3; duration: 500; running:true}
            },
            Transition {
                from: "state1"
                to: "state3"

                PropertyAnimation{ target: main_text;property: "text"; to: "Main 3"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header 3"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 0.3; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 0.3; duration: 500; running:true}
            },
            Transition {
                from: "state2"
                to: "state1"

                PropertyAnimation{ target: main_text;property: "text"; to: "Main 1"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header 1"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 0.3; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 0.3; duration: 500; running:true}
            },
            Transition {
                from: "state2"
                to: "state3"

                PropertyAnimation{ target: main_text;property: "text"; to: "Main 3"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header 3"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 0.3; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 0.3; duration: 500; running:true}
            },
            Transition {
                from: "state0"
                to: "state2"

                PropertyAnimation{ target: main_text;property: "text"; to: "Main 2"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header 2"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 0.3; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 0.3; duration: 500; running:true}
            },
            Transition {
                from: "state0"
                to: "state3"

                PropertyAnimation{ target: main_text;property: "text"; to: "Main 3"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header 3"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 0.3; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 0.3; duration: 500; running:true}
            },
            Transition {
                from: "state2"
                to: "state0"

                PropertyAnimation{ target: main_text;property: "text"; to: "Some content"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 1; duration: 500; running:true}
            },
            Transition {
                from: "state3"
                to: "state0"

                PropertyAnimation{ target: main_text;property: "text"; to: "Some content"; duration: 300; running:true }
                PropertyAnimation{ target: header_text;property: "text"; to: "Header"; duration: 300; running:true; }
                PropertyAnimation{ target: footer1; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer3; property: "opacity"; to: 1; duration: 500; running:true}
                PropertyAnimation{ target: footer2; property: "opacity"; to: 1; duration: 500; running:true}
            }
        ]

        state: "state0"

        Rectangle {
            id: header
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: app.height * 0.15
            color: 'light gray'

            Button {
                width: 150
                text: 'Назад'

                MouseArea {
                    id:mouse
                    hoverEnabled: true
                    anchors.fill: parent
                    onPressed: {
                        cl.state = "state0";
                    }
                }
            }

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
                        hoverEnabled: true
                        anchors.fill: parent
                        onPressed: {
                            cl.state = "state1";
                        }
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
                        onPressed: {
                            cl.state = "state2";
                        }
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
                        onPressed: {
                            cl.state = "state3";
                        }
                    }
                }
            }
        }

    }
}
