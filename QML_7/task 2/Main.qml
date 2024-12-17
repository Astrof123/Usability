import Felgo
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

App {

    Column {
        anchors.centerIn: parent
        spacing: 24

        Column {
            width: 400
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Enter your password:"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignCenter
            }
            Text {
                id: passwordField
                anchors.horizontalCenter: parent.horizontalCenter
                text: ""
                opacity: 0
            }
            Rectangle {

                color: "white"
                width: parent.width
                height: 50
                Layout.alignment: Qt.AlignCenter

                Row {
                    spacing: 6
                    anchors.centerIn: parent

                    Repeater {
                        model:6
                        Label {
                            width: 20
                            height: 20
                            font.pixelSize: 36
                            text: "*"
                            Layout.alignment: Qt.AlignCenter
                            color:index <passwordField.text.length ? "black" : "light grey"
                        }
                    }
                }
            }
        }



        GridLayout {
            anchors.horizontalCenter: parent.horizontalCenter
            id: keypad
            rows: 4
            columns: 3
            // width: parent.width
            Button {
                text: "1"
                onClicked: passwordField.text += "1"
            }
            Button {
                text: "2"
                onClicked: passwordField.text+= "2"
            }
            Button {
                text: "3"
                onClicked: passwordField.text+= "3"
            }
            Button {
                text: "4"
                onClicked: passwordField.text+= "4"
            }
            Button {
                text: "5"
                onClicked: passwordField.text+= "5"
            }
            Button {
                text: "6"
                onClicked: passwordField.text+= "6"
            }
            Button {
                text: "7"
                onClicked: passwordField.text+= "7"
            }
            Button {
                text: "8"
                onClicked: passwordField.text+= "8"
            }
            Button {
                text: "9"
                onClicked: passwordField.text+= "9"
            }
            Button {
                text: ""
            }
            Button {
                text: "0"
                onClicked: passwordField.text+= "0"
            }
            Button {
                text: "Clear"
                onClicked: passwordField.text = ""
            }
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Login In"
            width: 92
            height: 40
            background: Rectangle {
                color: "light blue"  // Задаем цвет фона
            }

        }
    }
}
