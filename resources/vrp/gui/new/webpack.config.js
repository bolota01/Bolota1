module.exports = {
    entry: "./fivem-hud/main.js",
    output: {
        filename: "bundle.js"
    },
    module: {
        rules: [
            {
                test: /\.js|.jsx$/,
                exclude: /node_modules/,
                use: {
                loader: "babel-loader"
                }
            }
        ]
    }
};