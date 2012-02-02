import QtQuick 1.0
import QtWebKit 1.0

Rectangle {
    id: rectangle1
    width: 800
    height: 480
    color: "#000000"

    function onMyButtonClicked() {
        if (text1.text == "CLOSE CHAT") {
            // close chat, open image of the day
            text1.text = "OPEN CHAT";
            web_view1.url = "html/imgotd.html";
        } else {
            // open chat, close image of the day
            text1.text = "CLOSE CHAT";
            web_view1.url = "html/chat.html";
        }
        //console.log("test button:" + web_view1.url);
    }

    GridView {
        id: grid_view1
        x: 0
        y: 0
        transformOrigin: Item.Center
        anchors.fill: parent

        WebView {
            id: web_view1
            x: 360
            y: 0
            width: 440
            height: 350
            preferredHeight: 0
            preferredWidth: 0
            url: "html/imgotd.html"
        }

        WebView {
            id: web_view2
            x: 360
            y: 350
            width: 440
            height: 130
            z: 11
            preferredHeight: 0
            preferredWidth: 0
            url: "html/player.html"

            Rectangle {
                id:rectangle2
                border.width: 5
                border.color: "#EFEFEF"
                color: "#000000"
                x: 5
                y: 70
                width: 430
                height: 50
                Text {
                    id: text1
                    color: "#d32727"
                    text: "OPEN CHAT"
                    style: Text.Normal
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 30
                    MouseArea {
                            anchors.fill: parent
                            onClicked: onMyButtonClicked();
                    }
                }
            }
        }
    }

    Image {
        id: image1
        x: 0
        y: 0
        width: 360
        height: 480
        fillMode: Image.PreserveAspectFit
        source: "left.jpg"
    }

    }

