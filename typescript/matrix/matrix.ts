export class Matrix {
  private _byRows: number[][];
  private _byCols: number[][];

  constructor(input: string) {

    let rows: string[] = input.split("\n");
    let curRow:number = 0;
    this._byRows = new Array(rows.length);
    rows.forEach((row: string) => {
      let vals: string[] = row.split(" ");
      let curCol:number = 0;
      this._byRows[curRow] = new Array(vals.length);
      vals.forEach((val: string) => {
        this._byRows[curRow][curCol] = Number(val);
        curCol++;
      });
      curRow++;
    });

    this._byCols = new Array(this._byRows[0].length);
    for (let i=0; i<this._byCols.length; i++) {
      this._byCols[i] = new Array(this._byRows.length);
      for (let j=0; j<this._byCols[i].length; j++) {
        this._byCols[i][j] = this._byRows[j][i];
      }
    }
  }

  get rows(): number[][] {
    return(this._byRows);
  }

  get columns(): number[][] {
    return(this._byCols);
  }
}
