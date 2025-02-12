export class Robot {
  private _name: string | undefined;
  private static _nameMap = new Map<string, boolean>();

  constructor() {
    this._name = this.nameGen();
    Robot._nameMap.set(this._name, true);
  }

  private nameGen(): string {
    while (true) {
      let testName =
        String.fromCharCode(65 + Math.floor(Math.random() * 26)) +
        String.fromCharCode(65 + Math.floor(Math.random() * 26)) +
        Math.floor(Math.random() * 10).toString() +
        Math.floor(Math.random() * 10).toString() +
        Math.floor(Math.random() * 10).toString();
      if (!Robot._nameMap.has(testName)) {
        return(testName);
      }
    }
  }

  public get name(): string {
    if (this._name == undefined) {
      this._name = this.nameGen();
      Robot._nameMap.set(this._name, true);
    }
    return(this._name);
    //throw new Error('Implement Robot#name')
  }

  public resetName(): void {
    this._name = undefined;
  }

  public static releaseNames(): void {
    Robot._nameMap.clear();
  }
}
