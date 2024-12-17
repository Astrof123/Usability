import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

App {
    SwipeView {
        id: view
        currentIndex: 1
        anchors.fill: parent
        Item {
            id: firstPage

            Rectangle {
                anchors.fill: parent
                color: "red"

                Text {
                    anchors.centerIn: parent
                    text: "Red Page"
                    font.pointSize: 20
                    color: "Black"
                }
            }
        }
        Item {
            id: secondPage

            Rectangle {
                anchors.fill: parent
                color: "green"

                Text {
                    anchors.centerIn: parent
                    text: "Green Page"
                    font.pointSize: 20
                    color: "Black"
                }
            }
        }
        Item {
            id: thirdPage

            Rectangle {
                anchors.fill: parent
                color: "yellow"

                Text {
                    anchors.centerIn: parent
                    text: "Yellow Page"
                    font.pointSize: 20
                    color: "Black"
                }
            }
        }
    }

    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
