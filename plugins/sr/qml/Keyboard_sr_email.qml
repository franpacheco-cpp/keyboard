/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import "../../keys"

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "љ"; shifted: "Љ"; }
            CharKey { label: "њ"; shifted: "Њ"; }
            CharKey { label: "е"; shifted: "Е"; extended: ["€", "е́", "е̑", "ѐ", "е̏", "е̄"]; extendedShifted: ["€", "Е́", "Е̑", "Ѐ", "Е̏", "Е̄"] }
            CharKey { label: "р"; shifted: "Р"; }
            CharKey { label: "т"; shifted: "Т"; }
            CharKey { label: "з"; shifted: "З"; }
            CharKey { label: "у"; shifted: "У"; extended: ["у́", "у̑", "у̀", "у̏", "ӯ"]; extendedShifted: ["У́", "У̑", "У̀", "У̏", "Ӯ"] }
            CharKey { label: "и"; shifted: "И"; extended: ["и́", "и̑", "ѝ", "и̏", "ӣ"]; extendedShifted: ["И́", "И̑", "Ѝ", "И̏", "Ӣ"] }
            CharKey { label: "о"; shifted: "О"; extended: ["о́", "о̑", "о̀", "о̏", "о̄"]; extendedShifted: ["О́", "О̑", "О̀", "О̏", "О̄"] }
            CharKey { label: "п"; shifted: "П"; }
            CharKey { label: "ш"; shifted: "Ш"; }
            CharKey { label: "ђ"; shifted: "Ђ"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "а"; shifted: "А"; extended: ["а́", "а̑", "а̀", "а̏", "а̄"]; extendedShifted: ["А́", "А̑", "А̀", "А̏", "А̄"]}
            CharKey { label: "с"; shifted: "С"; }
            CharKey { label: "д"; shifted: "Д"; }
            CharKey { label: "ф"; shifted: "Ф"; }
            CharKey { label: "г"; shifted: "Г"; }
            CharKey { label: "х"; shifted: "Х"; }
            CharKey { label: "ј"; shifted: "Ј"; }
            CharKey { label: "к"; shifted: "К"; }
            CharKey { label: "л"; shifted: "Л"; }
            CharKey { label: "ч"; shifted: "Ч"; }
            CharKey { label: "ћ"; shifted: "Ћ"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey { }
            CharKey { label: "@"; shifted: "@"; }
            CharKey { label: "џ"; shifted: "Џ"; }
            CharKey { label: "ц"; shifted: "Ц"; }
            CharKey { label: "в"; shifted: "В"; }
            CharKey { label: "б"; shifted: "Б"; }
            CharKey { label: "н"; shifted: "Н"; }
            CharKey { label: "м"; shifted: "М"; }
            CharKey { label: "ж"; shifted: "Ж"; }
            CharKey { label: "."; shifted: "."; }
            BackspaceKey { }
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight;
            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; }
            LanguageKey    { id: languageMenuButton; anchors.left: symShiftKey.right; }
            SpaceKey       { id: spaceKey;                               anchors.left: languageMenuButton.right; anchors.right: urlKey.left; noMagnifier: true }
            UrlKey         { id: urlKey; label: ".срб"; extended: [".пр.срб", ".орг.срб", ".обр.срб", ".од.срб", ".ак.срб", ".упр.срб"]; anchors.right: enterKey.left; }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right }
        }
    } // column
}
