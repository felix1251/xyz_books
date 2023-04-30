const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
    content: [
        "./public/*.html",
        "./app/helpers/**/*.rb",
        "./app/javascript/**/*.js",
        "./app/views/**/*.{erb,rb,haml,html,slim}",
        "./app/components/**/*.{erb,rb,haml,html,slim}",
    ],
    theme: {
        extend: {
            fontFamily: {
                sans: ["Inter var", ...defaultTheme.fontFamily.sans],
            },
            scale: {
                "-100": "-1",
            },
        },
    },
    plugins: [
        require("@tailwindcss/forms"),
        require("@tailwindcss/aspect-ratio"),
        require("@tailwindcss/typography"),
        require("@tailwindcss/container-queries"),
    ],
};
