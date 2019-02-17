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

import QtQuick 2.5


Image {
    id: root
    source: "images/hippy-back1.png"
// 	opacity: (0.2*stage-0.2)

    property int stage
    
    property int animdurationwave: 3000

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
        fondo1.opacity = Math.random() > 0.5 ? 1 : 0
        fondo2.opacity = Math.random() > 0.5 ? 1 : 0
        fondo3.opacity = Math.random() > 0.5 ? 1 : 0
        fondo4.opacity = Math.random() > 0.5 ? 1 : 0
        fondo5.opacity = Math.random() > 0.5 ? 1 : 0
    }
    Image {
		id: fondo0
        source: "images/hippy-back2.png"
		width: root.width
		height: root.height
		opacity: 1
		RotationAnimator on rotation {
                id: rotationAnimator
                from: 0
                to: 360
                duration: 7000
                loops: Animation.Infinite
        }
	}
    Image {
		id: fondo1
        source: "images/hippy-a.png"
		width: root.width
		height: root.height
		opacity: 0
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
	Image {
		id: fondo2
        source: "images/hippy-b.png"
		width: root.width
		height: root.height
		opacity: 0
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
	Image {
		id: fondo3
        source: "images/hippy-c.png"
		width: root.width
		height: root.height
		opacity: 0
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
	Image {
		id: fondo4
        source: "images/hippy-d.png"
		width: root.width
		height: root.height
		opacity: 0
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
	Image {
		id: fondo5
        source: "images/hippy-e.png"
		width: root.width
		height: root.height
		opacity: 0
		Behavior on opacity { 
            PropertyAnimation {
                duration: animdurationwave
                easing.type: Easing.InOutQuad
            }
        }
	}
    Image {
        id: topRect
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height
        source: "images/rectangle.png"
        Image {
			id: logo
            source: "images/kde.png"
            anchors.centerIn: parent
        }
        Image {
            id: busyIndicator
            //again sync from SDDM theme
            anchors.top: logo.bottom
//             anchors.topMargin: units.largeSpacing
            anchors.horizontalCenter: logo.horizontalCenter
            source: "images/busywidget.svgz"
            sourceSize.height: units.gridUnit * 2
            sourceSize.width: units.gridUnit * 2
            RotationAnimator on rotation {
                id: rotationAnimator2
                from: 0
                to: 360
                duration: 3000
                loops: Animation.Infinite
            }
        }
//         Rectangle {
//             radius: 3
//             color: "#ffffeb"
//             opacity: 0.7
//             anchors {
//                 bottom: parent.bottom
//                 bottomMargin: 50
//                 horizontalCenter: parent.horizontalCenter
//             }
//             height: 8
//             width: height*32
// //             Rectangle {
// //                 radius: 3
// //                 anchors {
// //                     left: parent.left
// //                     top: parent.top
// //                     bottom: parent.bottom
// //                 }
// //                 width: (parent.width / 6) * (stage - 1)
// //                 color: "#742721"
// //                 Behavior on width { 
// //                     PropertyAnimation {
// //                         duration: 250
// //                         easing.type: Easing.InOutQuad
// //                     }
// //                 }
// //             }
//             Rectangle{
//                 id: circ
//                 radius: 8
//                 width:16 
//                 x: (parent.width / 6) *(stage - 1)
//                 height: parent.height
//                 color: "#0d4c74"
//                 Behavior on width { 
//                     PropertyAnimation {
//                         duration: 250
//                         easing.type: Easing.InOutQuad
//                     }
//                 }
//             }
//         }
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
