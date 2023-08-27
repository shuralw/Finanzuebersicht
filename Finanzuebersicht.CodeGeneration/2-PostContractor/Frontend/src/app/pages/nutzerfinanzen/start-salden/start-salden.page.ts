import { AfterViewInit, Component, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { TableDataSource } from '@krz/material';
import { IStartSaldoDtoExpanded } from 'src/app/model/nutzerfinanzen/start-salden/dtos/i-start-saldo-dto-expanded';
import { StartSaldenCrudService } from 'src/app/model/nutzerfinanzen/start-salden/start-salden-crud.service';
import { StartSaldoCreateDialog } from './dialogs/create/start-saldo-create.dialog';

@Component({
  selector: 'app-start-salden',
  templateUrl: './start-salden.page.html',
  styleUrls: ['./start-salden.page.scss']
})
export class StartSaldenPage implements AfterViewInit {

  // FilterBar
  filterTerm = '';

  // Table
  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;
  public startSaldenDataSource: TableDataSource<IStartSaldoDtoExpanded>;
  public startSaldenGridColumns: string[] = [
    'betrag',
    'amDatum',
    'detail',
  ];

  constructor(
    private startSaldenCrudService: StartSaldenCrudService,
    private matDialog: MatDialog) {

    this.startSaldenDataSource = new TableDataSource<IStartSaldoDtoExpanded>({
      getPagedData: (options) => this.startSaldenCrudService.getPagedStartSalden(options),
      paginationOptions: (builder) => builder
        .AddContainsFilters('id', () => this.filterTerm)
    });
  }

  async ngAfterViewInit(): Promise<void> {
    setTimeout(() => {
      this.startSaldenDataSource.initialize(this.paginator, this.sort);
    }, 0);
  }

  openCreateDialog(): void {
    this.matDialog.open(StartSaldoCreateDialog, {
      maxHeight: '90vh',
      panelClass: 'fst-dialog',
    });
  }

}
