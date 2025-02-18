export class Robot {
  private _name: string | undefined;
  private static _nameMap: Set<string> = new Set();

  constructor() {
    this.assignName(this.nameGen());
  }

  private assignName(newName: string): void {
    if (Robot._nameMap.has(newName)) {
      throw new Error('Attempted to assign duplicate name');
    }
    this._name = newName;
    Robot._nameMap.add(newName);
  }

  private nameGen(): string {
    if (Robot._nameMap.size == (26 * 26 * 10 * 10 * 10)) {
      throw new Error('Used all possible names');
    }
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
      this.assignName(this.nameGen());
    }
    return(String(this._name));
  }

  public resetName(): void {
    this._name = undefined;
  }

  public static releaseNames(): void {
    Robot._nameMap.clear();
  }
}
