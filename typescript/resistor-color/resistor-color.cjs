"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.COLORS = exports.colorCode = void 0;
// export const colorCode = (color: string) => COLORS.indexOf(color.toLowerCase());
var colorCode = function (color) {
    console.log(color);
    return exports.COLORS.indexOf(color);
};
exports.colorCode = colorCode;
exports.COLORS = [
    "black", "brown", "red", "orange", "yellow",
    "green", "blue", "violet", "grey", "white"
];
