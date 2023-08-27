import { AfterViewInit, Component, ViewChild } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { DropdownDataSource, TableDataSource } from '@krz/material';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { CategorySearchTermsCrudService } from 'src/app/model/nutzerfinanzen/category-search-terms/category-search-terms-crud.service';
import { ICategorySearchTermDtoExpanded } from 'src/app/model/nutzerfinanzen/category-search-terms/dtos/i-category-search-term-dto-expanded';
import { CategorySearchTermCreateDialog } from './dialogs/create/category-search-term-create.dialog';

@Component({
  selector: 'app-category-search-terms',
  templateUrl: './category-search-terms.page.html',
  styleUrls: ['./category-search-terms.page.scss']
})
export class CategorySearchTermsPage implements AfterViewInit {

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
  public categorySearchTermsDataSource: TableDataSource<ICategorySearchTermDtoExpanded>;
  public categorySearchTermsGridColumns: string[] = [
    'category',
    'term',
    'detail',
  ];

  constructor(
    private categoriesCrudService: CategoriesCrudService,
    private categorySearchTermsCrudService: CategorySearchTermsCrudService,
    private matDialog: MatDialog) {

    this.categorySearchTermsDataSource = new TableDataSource<ICategorySearchTermDtoExpanded>({
      getPagedData: (options) => this.categorySearchTermsCrudService.getPagedCategorySearchTerms(options),
      paginationOptions: (builder) => builder
        .AddContainsFilters('id', () => this.filterTerm)
        .AddEqualsFilters('categoryId', () => this.categorySelectedValues)
    });
  }

  async ngAfterViewInit(): Promise<void> {
    setTimeout(() => {
      this.categorySearchTermsDataSource.initialize(this.paginator, this.sort);
    }, 0);
  }

  openCreateDialog(): void {
    this.matDialog.open(CategorySearchTermCreateDialog, {
      maxHeight: '90vh',
      panelClass: 'fst-dialog',
    });
  }

}
