import { AfterViewInit, Component, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { DropdownDataSource, TableDataSource } from '@krz/material';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { ICategoryDtoExpanded } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto-expanded';
import { CategoryCreateDialog } from './dialogs/create/category-create.dialog';

@Component({
  selector: 'app-categories',
  templateUrl: './categories.page.html',
  styleUrls: ['./categories.page.scss']
})
export class CategoriesPage implements AfterViewInit {

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
  public categoriesDataSource: TableDataSource<ICategoryDtoExpanded>;
  public categoriesGridColumns: string[] = [
    'title',
    'color',
    'category',
    'detail',
  ];

  constructor(
    private categoriesCrudService: CategoriesCrudService,
    private matDialog: MatDialog) {

    this.categoriesDataSource = new TableDataSource<ICategoryDtoExpanded>({
      getPagedData: (options) => this.categoriesCrudService.getPagedCategories(options),
      paginationOptions: (builder) => builder
        .AddContainsFilters('id', () => this.filterTerm)
        .AddEqualsFilters('categoryId', () => this.categorySelectedValues)
    });
  }

  async ngAfterViewInit(): Promise<void> {
    setTimeout(() => {
      this.categoriesDataSource.initialize(this.paginator, this.sort);
    }, 0);
  }

  openCreateDialog(): void {
    this.matDialog.open(CategoryCreateDialog, {
      maxHeight: '90vh',
      panelClass: 'fst-dialog',
    });
  }

}
