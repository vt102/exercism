"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Robot = void 0;
var Robot = /** @class */ (function () {
    function Robot() {
        this._name =
            String.fromCharCode(65 + Math.floor(Math.random() * 26)) +
                String.fromCharCode(65 + Math.floor(Math.random() * 26)) +
                Math.floor(Math.random() * 10).toString() +
                Math.floor(Math.random() * 10).toString() +
                Math.floor(Math.random() * 10).toString();
    }
    Object.defineProperty(Robot.prototype, "name", {
        get: function () {
            return (this._name);
            //throw new Error('Implement Robot#name')
        },
        enumerable: false,
        configurable: true
    });
    Robot.prototype.resetName = function () {
        throw new Error('Implement Robot#resetName');
    };
    Robot.releaseNames = function () {
        // throw new Error('Implement Robot.releaseNames')
    };
    return Robot;
}());
exports.Robot = Robot;
