/*
 *   Copyright 2014 Marco Martin <mart@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2,
 *   or (at your option) any later version, as published by the Free
 *   Software Foundation
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.1


Image {
    id: root
    source: "images/slan.png"
// 	opacity: (0.2*stage-0.2)

    property int stage
    property variant peng: ["images/p1.jpg","images/p2.jpg","images/p3.jpg","images/p4.jpg","images/p5.jpg"]
    property variant linux: ["images/li1.jpg","images/li2.jpg","images/li3.jpg","images/li4.jpg","images/li5.jpg"]
    property variant  gnu:  ["images/gn1.jpg","images/gn2.jpg","images/gn3.jpg","images/gn4.jpg","images/gn5.jpg"]
    property variant stall: ["images/ig1.jpg","images/ig2.jpg","images/ig3.jpg","images/ig4.jpg","images/ig5.jpg"]
    
    
    property int animdurationwave: 2000

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
//         fondo1.opacity = Math.random() > 0.5 ? 1 : 0
//         if(Math.random() > 0.5) {fondo1.y = 0}
//         if(Math.random() > 0.5) {fondo2.y = 0}
//         if(Math.random() > 0.5) {fondo3.y = 0}
//         fondo2.opacity = Math.random() > 0.5 ? 1 : 0
//         fondo3.opacity = Math.random() > 0.5 ? 1 : 0
//         fondo4.opacity = Math.random() > 0.5 ? 1 : 0
//         fondo5.opacity = Math.random() > 0.5 ? 1 : 0
    }
    Timer {
            id: blipTimer
            running: true
            interval: 1000
            repeat: true
            triggeredOnStart: true
            onTriggered: {
//                 fondo1.opacity = (Math.floor(Math.random() *4) +1 == 1) ?1 : 0
// 		        fondo2.opacity = (Math.floor(Math.random() *4) +1 == 2) ?1 : 0
// 		        fondo3.opacity = (Math.floor(Math.random() *4) +1 == 3) ?1 : 0
// 		        fondo4.opacity = (Math.floor(Math.random() *4) +1 == 4) ?1 : 0
// 		        fondo5.opacity = Math.random() > 0.5 ? (loginScreenRoot.uiVisible ? 0.7 : 1) : 0
		        fondo1.source = linux[ Math.floor(Math.random() *5) ]
		        fondo2.source = gnu[ Math.floor(Math.random() *5) ]
		        fondo3.source = peng[ Math.floor(Math.random() *5) ]
		        fondo4.source = stall[ Math.floor(Math.random() *5) ]
            }
        }
    Image {
		id: fondo1
        source: linux[0]//"images/slan.png"
		width: root.width/2
		height: root.height/2
		opacity: 1
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
//         y: root.height
        Behavior on y { 
            PropertyAnimation {
				from: root.height
				to: -root.height
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
	Image {
		id: fondo2
        source: gnu[0]
		width: root.width/2
		height: root.height/2
		anchors.left: fondo1.right
		opacity: 1
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
//         y: root.height
        Behavior on y { 
            PropertyAnimation {
				from: root.height
				to: -root.height
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
	Image {
		id: fondo3
        source: peng[0]
		width: root.width/2
		height: root.height/2
		anchors.top: fondo1.bottom
		opacity: 1
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
//         y: root.height
        Behavior on y { 
            PropertyAnimation {
				from: root.height
				to: -root.height
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
	Image {
		id: fondo4
        source: stall[0]
		width: root.width/2
		height: root.height/2
		anchors.top:fondo2.bottom
		anchors.left: fondo3.right
		opacity: 1
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
//         y: root.height
        Behavior on y { 
            PropertyAnimation {
				from: root.height
				to: -root.height
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
// 	Image {
// 		id: fondo5
//         source: "images/slan4.png"
// 		width: root.width
// 		height: root.height
// 		opacity: 1
// 		Behavior on opacity { 
//             PropertyAnimation {
//                 duration: animdurationwave
//                 easing.type: Easing.InOutQuad
//             }
//         }
// //         y: root.height
//         Behavior on y { 
//             PropertyAnimation {
// 				from: root.height
// 				to: -root.height
//                 duration: animdurationwave
//                 easing.type: Easing.InOutQuad
//             }
//         }
// 	}
    Image {
        id: topRect
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height
        source: "images/rectangle.png"
        Image {
            source: "images/kde.png"
            anchors.centerIn: parent
        }
        Rectangle {
            radius: 3
            color: "gray"
            opacity: 0.7
            anchors {
                bottom: parent.bottom
                bottomMargin: 50
                horizontalCenter: parent.horizontalCenter
            }
            height: 8
            width: height*32
            Rectangle{
                id: circ
                radius: 8
                width:16 
                x: (parent.width / 6) *(stage - 1)
                height: parent.height
                color: "white"
                Behavior on width { 
                    PropertyAnimation {
                        duration: 250
                        easing.type: Easing.InOutQuad
                    }
                }
            }
        }
    }

    SequentialAnimation {
        id: introAnimation
        running: false

        ParallelAnimation {
            PropertyAnimation {
                property: "y"
                target: topRect
                to: root.height / 3
                duration: 1000
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }

//             PropertyAnimation {
//                 property: "y"
//                 target: bottomRect
//                 to: 2 * (root.height / 3) - bottomRect.height
//                 duration: 1000
//                 easing.type: Easing.InOutBack
//                 easing.overshoot: 1.0
//             }
            
            PropertyAnimation {
                property: "y"
                target: circ
                to: 2 * (root.height / 3) - bottomRect.height
                duration: 1000
                easing.type: Easing.InOutBack
                easing.overshoot: 1.0
            }
        }
    }
}
