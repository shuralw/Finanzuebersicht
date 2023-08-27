import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { DropdownDataSource, FormController } from '@krz/material';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { ICategoryDtoExpanded } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto-expanded';
import { CategorySearchTermsCrudService } from 'src/app/model/nutzerfinanzen/category-search-terms/category-search-terms-crud.service';

export interface CategorySearchTermCreateDialogForm {
  categoryId: string;
  term: string;
}

@Component({
  selector: 'app-category-search-term-create',
  templateUrl: './category-search-term-create.dialog.html',
  styleUrls: ['./category-search-term-create.dialog.scss']
})
export class CategorySearchTermCreateDialog implements OnInit {

  formController: FormController<CategorySearchTermCreateDialogForm>;

  categoryDataSource: DropdownDataSource<ICategoryDtoExpanded>;

  constructor(
    private categorySearchTermsCrudService: CategorySearchTermsCrudService,
    private categoriesCrudService: CategoriesCrudService,
    private formBuilder: UntypedFormBuilder,
    private router: Router,
    private dialogRef: MatDialogRef<CategorySearchTermCreateDialog>) {
  }

  async ngOnInit(): Promise<void> {
    this.initializeDataSources();
    this.setupFormController();
  }

  initializeDataSources() {

    this.categoryDataSource = new DropdownDataSource({
      filterField: 'id',
      getPagedData: (options) => this.categoriesCrudService.getPagedCategories(options),
    });
  }

  setupFormController() {
    this.formController = new FormController(this.formBuilder, {
      categoryId: {
        validators: [Validators.required],
      },
      term: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(100)],
      },
    });
  }

  async onCreateClicked(): Promise<void> {
    this.formController.formGroup.markAllAsTouched();
    if (!this.formController.formGroup.valid) {
      this.scrollToFirstInvalidControl();
      return;
    }

    const categorySearchTermId = await this.categorySearchTermsCrudService.createCategorySearchTerm(this.formController.formGroup.getRawValue());
    this.dialogRef.close();
    await this.router.navigate(['/nutzerfinanzen/category-search-terms/detail', categorySearchTermId]);
  }

  scrollToFirstInvalidControl(): void {
    const firstElementWithError = document.querySelector('.mat-form-field.ng-invalid');
    if (firstElementWithError) {
      firstElementWithError.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
  }

}
