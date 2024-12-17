import Felgo
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

App {

    Column {
        spacing: 16
        anchors.centerIn: parent

        TextField {
            id: usernameField
            placeholderText: "Username"
            font.pixelSize: 16
        }
        TextField {
            id: passwordField
            placeholderText: "Password"
            font.pixelSize: 16
            echoMode: TextInput.Password
        }

        Row {
            spacing: 16

            Button {
                text: "Login In"
                width: 92
                height: 40
                background: Rectangle {
                    color: "light blue"  // Задаем цвет фона
                }

            }

            Button {
                text: "Clear"
                width: 92
                height: 40

                background: Rectangle {
                    color: "Alice blue"  // Задаем цвет фона
                }

                onClicked: {
                    usernameField.text = ""
                    passwordField.text = ""
                }
            }
        }

    }


}
