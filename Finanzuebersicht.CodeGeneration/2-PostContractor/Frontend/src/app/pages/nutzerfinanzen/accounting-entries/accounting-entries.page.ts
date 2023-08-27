import { AfterViewInit, Component, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { DropdownDataSource, TableDataSource } from '@krz/material';
import { AccountingEntriesCrudService } from 'src/app/model/nutzerfinanzen/accounting-entries/accounting-entries-crud.service';
import { IAccountingEntryDtoExpanded } from 'src/app/model/nutzerfinanzen/accounting-entries/dtos/i-accounting-entry-dto-expanded';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { AccountingEntryCreateDialog } from './dialogs/create/accounting-entry-create.dialog';

@Component({
  selector: 'app-accounting-entries',
  templateUrl: './accounting-entries.page.html',
  styleUrls: ['./accounting-entries.page.scss']
})
export class AccountingEntriesPage implements AfterViewInit {

  // FilterBar
  filterTerm = '';

  categorySelectedValues = [];
  categoryDataSource = new DropdownDataSource({
    filterField: 'id',
    getPagedData: (options) => this.categoriesCrudService.getPagedCategories(options),
  });

  // Table
  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;
  public accountingEntriesDataSource: TableDataSource<IAccountingEntryDtoExpanded>;
  public accountingEntriesGridColumns: string[] = [
    'category',
    'auftragskonto',
    'buchungsdatum',
    'valutaDatum',
    'buchungstext',
    'verwendungszweck',
    'glaeubigerId',
    'mandatsreferenz',
    'sammlerreferenz',
    'lastschriftUrsprungsbetrag',
    'auslagenersatzRuecklastschrift',
    'beguenstigter',
    'iBAN',
    'bIC',
    'betrag',
    'waehrung',
    'info',
    'detail',
  ];

  constructor(
    private categoriesCrudService: CategoriesCrudService,
    private accountingEntriesCrudService: AccountingEntriesCrudService,
    private matDialog: MatDialog) {

    this.accountingEntriesDataSource = new TableDataSource<IAccountingEntryDtoExpanded>({
      getPagedData: (options) => this.accountingEntriesCrudService.getPagedAccountingEntries(options),
      paginationOptions: (builder) => builder
        .AddContainsFilters('id', () => this.filterTerm)
        .AddEqualsFilters('categoryId', () => this.categorySelectedValues)
    });
  }

  async ngAfterViewInit(): Promise<void> {
    setTimeout(() => {
      this.accountingEntriesDataSource.initialize(this.paginator, this.sort);
    }, 0);
  }

  openCreateDialog(): void {
    this.matDialog.open(AccountingEntryCreateDialog, {
      maxHeight: '90vh',
      panelClass: 'fst-dialog',
    });
  }

}
