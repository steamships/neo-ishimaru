const path = require('path');

module.exports = {
	mode: 'development',
	entry: './src/js/starter.js',
	output: {
		filename: 'bundle.js',
		path: path.resolve(__dirname, 'assets/js')
	}
};
