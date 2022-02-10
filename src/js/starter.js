// Importing JavaScript
//
// You have two choices for including Bootstrap's JS files—the whole thing,
// or just the bits that you need.


// Option 1
//
// Import Bootstrap's bundle (all of Bootstrap's JS + Popper.js dependency)

import "../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js";
import "../../node_modules/chart.js/dist/chart.js";

// Option 2
//
// Import just what we need

// If you're importing tooltips or popovers, be sure to include our Popper.js dependency
// import "../../node_modules/popper.js/dist/popper.min.js";


// import "../../node_modules/bootstrap/js/dist/util.js";
// import "../../node_modules/bootstrap/js/dist/modal.js";

//パーツごとのJSファイルを読み込み
import { header } from "./_header.js";
header();
// import { nenshiOverlay } from "./_overlay.js";
// nenshiOverlay();
import { product_list } from "./_product_list.js";
product_list();
import { get_instagram_API } from "./_information.js";
get_instagram_API();
import { privacy } from "./_privacy.js";
privacy();
import { guide } from "./_guide.js";
guide();
require("./beef-chart");
