/****************************************************************************
 *
 * (c) 2009-2020 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/

import QtQuick          2.3
import QtQuick.Layouts  1.11

import QGroundControl               1.0
import QGroundControl.Controls      1.0
import QGroundControl.Palette       1.0
import QGroundControl.ScreenTools   1.0

Rectangle {
    color:          qgcPal.window
    anchors.fill:   parent

    readonly property real _margins: ScreenTools.defaultFontPixelHeight

    QGCPalette { id: qgcPal; colorGroupEnabled: true }

    QGCFlickable {
        anchors.margins:    _margins
        anchors.fill:       parent
        contentWidth:       grid.width
        contentHeight:      grid.height
        clip:               true

        GridLayout {
            id:         grid
            columns:    2

            QGCLabel { text: qsTr("Website MAJ Vietnam") }
            QGCLabel {
                linkColor:          qgcPal.text
                text:               "<a href=\"https://maj.com.vn\">https://maj.com.vn</a>"
                onLinkActivated:    Qt.openUrlExternally(link)
            }

            QGCLabel { text: qsTr("Facebook MAJ Vietnam") }
            QGCLabel {
                linkColor:          qgcPal.text
                text:               "<a href=\"https://www.facebook.com/majvietnam\">https://www.facebook.com/majvietnam</a>"
                onLinkActivated:    Qt.openUrlExternally(link)
            }

            QGCLabel { text: qsTr("Product manual") }
            QGCLabel {
                linkColor:          qgcPal.text
                text:               "<a href=\"https://maj.com.vn/huong-dan\">https://maj.com.vn/huong-dan</a>"
                onLinkActivated:    Qt.openUrlExternally(link)
            }
        }
    }
}
