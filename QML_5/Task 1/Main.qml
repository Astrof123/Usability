import Felgo
import QtQuick


App {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    minimumWidth: 400
    minimumHeight: 450

    Rectangle {
        id: mainRect
        width: 200
        height: 200
        color: "blue"

        states: [
            State {
                name: "state1"
                PropertyChanges { target: mainRect; color: "blue" }
            },
            State {
                name: "state2"
                PropertyChanges { target: mainRect; color: "red" }
            }
        ]

        transitions: [
            Transition {
                from: "state1"
                to: "state2"
                ColorAnimation { target: mainRect; duration: 1000; property: "color" }
            },
            Transition {
                from: "state2"
                to: "state1"
                ColorAnimation { target: mainRect; duration: 1000; property: "color" }
            }
        ]

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (mainRect.state === "state1") {
                    mainRect.state = "state2";
                } else {
                    mainRect.state = "state1";
                }
            }
        }
    }
}
