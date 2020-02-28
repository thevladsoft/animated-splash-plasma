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
//     source: "images/umbrella1.jpg"
// 	opacity: (0.2*stage-0.2)

    property int stage
    
    property int animdurationwave: 1500

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
            interval: 1500
            repeat: true
            triggeredOnStart: true
            onTriggered: {
//                 fondo1.opacity = (Math.floor(Math.random() *4) +1 == 1) ?1 : 0
// 		        fondo2.opacity = (Math.floor(Math.random() *4) +1 == 2) ?1 : 0
// 		        fondo3.opacity = (Math.floor(Math.random() *4) +1 == 3) ?1 : 0
// 		        fondo4.opacity = Math.random() *0.9
// 		        fondo5.opacity = Math.random() > 0.5 ? (loginScreenRoot.uiVisible ? 0.7 : 1) : 0
                laser1.rotation = Math.floor(Math.random() *360)
                laser1.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser2.rotation = Math.floor(Math.random() *360)
                laser2.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser3.rotation = Math.floor(Math.random() *360)
                laser3.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser4.rotation = Math.floor(Math.random() *360)
                laser4.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                
                laser5.rotation = Math.floor(Math.random() *360)
                laser5.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser6.rotation = Math.floor(Math.random() *360)
                laser6.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser7.rotation = Math.floor(Math.random() *360)
                laser7.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser8.rotation = Math.floor(Math.random() *360)
                laser8.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                
                laser9.rotation = Math.floor(Math.random() *360)
                laser9.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser10.rotation = Math.floor(Math.random() *360)
                laser10.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser11.rotation = Math.floor(Math.random() *360)
                laser11.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser12.rotation = Math.floor(Math.random() *360)
                laser12.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                
                laser13.rotation = Math.floor(Math.random() *360)
                laser13.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser14.rotation = Math.floor(Math.random() *360)
                laser14.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser15.rotation = Math.floor(Math.random() *360)
                laser15.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                laser16.rotation = Math.floor(Math.random() *360)
                laser16.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                
                ring1.radius= ring1.width*0.4+Math.random()*ring1.width*0.1
                ring1border.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                ring2.radius= ring2.width*0.4+Math.random()*ring2.width*0.1
                ring2border.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
                ring3.radius= ring3.width*0.4+Math.random()*ring3.width*0.1
                ring3border.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            }
        }
    AnimatedImage {
		id: fondo1
        source: "images/Color_square_cm.gif"
		width: root.width
		height: root.height
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
	
	Rectangle{
          height: root.height
          width: root.width
          color: "black"
          opacity:0.5
        }
	
	Rectangle{
            id: laser1
            x: root.width/2
            y: root.height/2
            height:5
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser2
            x: root.width/2
            y: root.height/2
            height:5
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser3
            x: root.width/2
            y: root.height/2
            height:5
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser4
            x: root.width/2
            y: root.height/2
            height:5
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        
        Rectangle{
            id:ring1
            height: root.width/5
            width:root.width/5
            x: root.width/2-width/2
            y: root.height/2-height/2
            border {
                id:ring1border
                color: "black"
                width: 35
                Behavior on color { 
                    PropertyAnimation {
                        duration: blipTimer.interval
                        easing.type: Easing.OutInElastic
                    }
                }
            }
            radius: width*0.5
             Behavior on radius { 
                PropertyAnimation {
                    duration: blipTimer.interval
                    easing.type: Easing.OutInElastic
                }
            }
            color:"transparent"
        }
        
        Rectangle{
            id: laser5
            x: root.width/2
            y: root.height/2
            height:6
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser6
            x: root.width/2
            y: root.height/2
            height:6
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser7
            x: root.width/2
            y: root.height/2
            height:6
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser8
            x: root.width/2
            y: root.height/2
            height:6
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        
        Rectangle{
            id:ring2
            height: root.width/2.2
            width:root.width/2.2
            x: root.width/2-width/2
            y: root.height/2-height/2
            border {
                id:ring2border
                color: "black"
                width: 55
                Behavior on color { 
                    PropertyAnimation {
                        duration: blipTimer.interval
                        easing.type: Easing.OutBounce
                    }
                }
            }
            radius: width*0.5
            Behavior on radius { 
                PropertyAnimation {
                    duration: blipTimer.interval
                    easing.type: Easing.OutBounce
                }
            }
            color:"transparent"
        }
        
        Rectangle{
            id: laser9
            x: root.width/2
            y: root.height/2
            height:7
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser10
            x: root.width/2
            y: root.height/2
            height:7
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser11
            x: root.width/2
            y: root.height/2
            height:7
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser12
            x: root.width/2
            y: root.height/2
            height:7
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        
         Rectangle{
            id:ring3
            height: root.width/1.4
            width:root.width/1.4
            x: root.width/2-width/2
            y: root.height/2-height/2
            border {
                id:ring3border
                color: "black"
                width: 65
                Behavior on color { 
                    PropertyAnimation {
                        duration: blipTimer.interval
                        easing.type: Easing.InBounce
                    }
                }
            }
            radius: width*0.5
            Behavior on radius { 
                PropertyAnimation {
                    duration: blipTimer.interval
                    easing.type: Easing.InBounce
                }
            }
            color:"transparent"
        }
        
        Rectangle{
            id: laser13
            x: root.width/2
            y: root.height/2
            height:8
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser14
            x: root.width/2
            y: root.height/2
            height:8
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser15
            x: root.width/2
            y: root.height/2
            height:8
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        Rectangle{
            id: laser16
            x: root.width/2
            y: root.height/2
            height:8
            width:root.width
            transformOrigin:Item.TopLeft
            radius:30
            Behavior on rotation { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
            rotation: Math.floor(Math.random() *360)
            color:Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            Behavior on color { 
	            PropertyAnimation {
	                duration: blipTimer.interval
	                easing.type: Easing.InOutQuad
	            }
	        }
        }
        
// 	Image {
// 		id: fondo2
//         source: "images/umbrella2.jpg"
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
// 	Image {
// 		id: fondo3
//         source: "images/umbrella3.jpg"
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
// 	AnimatedImage {
// 		id: fondo4
//         source: "images/glitch.gif"
// 		width: root.width
// 		height: root.height
// 		opacity: 0.4
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
// 	Image {
// 		id: fondo5
//         source: "images/beams5.png"
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
            color: "#ffffeb"
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
                color: "#0d4c74"
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
