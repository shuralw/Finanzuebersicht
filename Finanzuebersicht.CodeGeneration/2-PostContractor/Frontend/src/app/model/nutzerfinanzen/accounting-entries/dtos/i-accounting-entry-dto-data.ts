export interface IAccountingEntryDtoData {
    auftragskonto: string;
    buchungsdatum: Date;
    valutaDatum: Date;
    buchungstext: string;
    verwendungszweck: string;
    glaeubigerId?: string;
    mandatsreferenz?: string;
    sammlerreferenz?: string;
    lastschriftUrsprungsbetrag?: number;
    auslagenersatzRuecklastschrift?: string;
    beguenstigter: string;
    iBAN: string;
    bIC: string;
    betrag: number;
    waehrung: string;
    info: string;
    categoryId: string;
}
