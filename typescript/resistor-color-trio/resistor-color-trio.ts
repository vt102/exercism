const COLORS = [
    "black", "brown", "red", "orange", "yellow",
    "green", "blue", "violet", "grey", "white"
];

export function decodedResistorValue(colors: string[]): string {
    const zeros = COLORS.indexOf(colors[2])
    let val = ((COLORS.indexOf(colors[0]) * 10) +
        COLORS.indexOf(colors[1])) * 10**zeros;

    let prefix = '';
    if (val >= 10**9) {
        prefix = "giga";
        val = val / 10**9;
    } else if (val >= 10**6) {
        prefix = "mega";
        val = val / 10**6;
    } else if (val >= 10**3) {
        prefix = "kilo";
        val = val / 10**3;
    }

    return(`${val} ${prefix}ohms`);
}
