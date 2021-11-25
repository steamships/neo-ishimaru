/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (function() { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./src/js/_header.js":
/*!***************************!*\
  !*** ./src/js/_header.js ***!
  \***************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"header\": function() { return /* binding */ header; }\n/* harmony export */ });\nconst header = () => {\n\tconsole.log('header');\n\n\t//ハンバーガーメニューの処理\n\t$(\".openbtn\").click(function () {\n\t\t$(this).toggleClass('active');\n\t});\n\n\t//ヘッダーの高さを取得→bodyのpadding-topへ設定\n\tconst headerHight = $('.header-nav').outerHeight();\n\t$('body').css('padding-top', headerHight+10);\n}\n\n\n//# sourceURL=webpack://bootstrap-npm-starter/./src/js/_header.js?");

/***/ }),

/***/ "./src/js/starter.js":
/*!***************************!*\
  !*** ./src/js/starter.js ***!
  \***************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _header_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./_header.js */ \"./src/js/_header.js\");\n// Importing JavaScript\n//\n// You have two choices for including Bootstrap's JS files—the whole thing,\n// or just the bits that you need.\n\n\n// Option 1\n//\n// Import Bootstrap's bundle (all of Bootstrap's JS + Popper.js dependency)\n\n// import \"../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js\";\n\n\n// Option 2\n//\n// Import just what we need\n\n// If you're importing tooltips or popovers, be sure to include our Popper.js dependency\n// import \"../../node_modules/popper.js/dist/popper.min.js\";\n\n\n// import \"../../node_modules/bootstrap/js/dist/util.js\";\n// import \"../../node_modules/bootstrap/js/dist/modal.js\";\n\n//パーツごとのJSファイルを読み込み\n\n(0,_header_js__WEBPACK_IMPORTED_MODULE_0__.header)();\n\n\n//# sourceURL=webpack://bootstrap-npm-starter/./src/js/starter.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/define property getters */
/******/ 	!function() {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = function(exports, definition) {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	!function() {
/******/ 		__webpack_require__.o = function(obj, prop) { return Object.prototype.hasOwnProperty.call(obj, prop); }
/******/ 	}();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	!function() {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = function(exports) {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	}();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./src/js/starter.js");
/******/ 	
/******/ })()
;