/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 10000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }


  Slide {
        anchors.fill: parent

        Image {
            id: background
            source: "slide1.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background1
            source: "slide2.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    Slide {
        anchors.fill: parent

        Image {
            id: background2
            source: "slide3.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

        Slide {
        anchors.fill: parent

        Image {
            id: background3
            source: "slide4.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

        Slide {
        anchors.fill: parent

        Image {
            id: background4
            source: "slide5.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

        Slide {
        anchors.fill: parent

        Image {
            id: background5
            source: "slide6.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

        Slide {
        anchors.fill: parent

        Image {
            id: background6
            source: "slide7.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

        Slide {
        anchors.fill: parent

        Image {
            id: background7
            source: "slide8.png"
            width: 850; height: 550
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
    }

    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
