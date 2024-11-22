import Felgo
import QtQuick


App {
    width: 1024
    height: 1024

    Rectangle {
        id: body
        width: 150
        height: 200
        color: "Forest Green"
        anchors.centerIn: parent
    }

    Hand {
        id: lefthand
        anchors.right: body.left
        anchors.top: body.top
    }

    Hand {
        id: righthand
        anchors.left: body.right
        anchors.top: body.top
    }

    Rectangle {
        id: neck
        width: 46
        height: 12
        color: "Bisque"
        anchors.bottom: body.top
        anchors.horizontalCenter: body.horizontalCenter
    }

    Rectangle {
        id: head
        width: 85
        height: 85
        color: "Bisque"
        anchors.bottom: neck.top
        anchors.horizontalCenter: body.horizontalCenter

    }

    Leg {
        id: leftleg
        anchors.left: body.left
    }

    Leg {
        id: rightleg
        anchors.right: body.right
    }

    Fit {
        id: leftfit
        anchors.right: leftleg.right
        anchors.top: leftleg.bottom
    }

    Fit {
        id: rightfit
        anchors.left: rightleg.left
        anchors.top: rightleg.bottom
    }

    Rectangle {
        id: cap1
        width: 160
        height: 25
        color: "Red"
        anchors.right: body.right
        anchors.bottom: head.top
    }

    Rectangle {
        id: cap2
        width: 90
        height: 25
        color: "Red"
        anchors.right: head.right
        anchors.bottom: cap1.top
    }

    Rectangle {
        id: handleShovel
        width: 20
        height: 320
        color: "Sienna"
        anchors.right: lefthand.left
        anchors.top: neck.top
    }

    Rectangle {
        id: shovel
        width: 100
        height: 90
        color: "Silver"
        anchors.top: handleShovel.bottom
        anchors.horizontalCenter: handleShovel.horizontalCenter
    }

    Image {
        id: danny
        width: 85
        height: 85
        source: "danny.jpg"

        anchors.fill: head
    }
}
