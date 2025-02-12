// export const colorCode = (color: string) => COLORS.indexOf(color.toLowerCase());
export const colorCode = function (color: string): number {
    console.log(color);
    return COLORS.indexOf(color);
}

export const COLORS = [
    "black", "brown", "red", "orange", "yellow",
    "green", "blue", "violet", "grey", "white"
];
