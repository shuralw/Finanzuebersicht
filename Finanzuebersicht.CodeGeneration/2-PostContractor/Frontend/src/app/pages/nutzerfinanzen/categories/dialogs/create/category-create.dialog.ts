import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { DropdownDataSource, FormController } from '@krz/material';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { ICategoryDtoExpanded } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto-expanded';

export interface CategoryCreateDialogForm {
  title: string;
  color: string;
  categoryId: string;
}

@Component({
  selector: 'app-category-create',
  templateUrl: './category-create.dialog.html',
  styleUrls: ['./category-create.dialog.scss']
})
export class CategoryCreateDialog implements OnInit {

  formController: FormController<CategoryCreateDialogForm>;

  categoryDataSource: DropdownDataSource<ICategoryDtoExpanded>;

  constructor(
    private categoriesCrudService: CategoriesCrudService,
    private formBuilder: UntypedFormBuilder,
    private router: Router,
    private dialogRef: MatDialogRef<CategoryCreateDialog>) {
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
      title: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(200)],
      },
      color: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(30)],
      },
      categoryId: {
        validators: [Validators.required],
      },
    });
  }

  async onCreateClicked(): Promise<void> {
    this.formController.formGroup.markAllAsTouched();
    if (!this.formController.formGroup.valid) {
      this.scrollToFirstInvalidControl();
      return;
    }

    const categoryId = await this.categoriesCrudService.createCategory(this.formController.formGroup.getRawValue());
    this.dialogRef.close();
    await this.router.navigate(['/nutzerfinanzen/categories/detail', categoryId]);
  }

  scrollToFirstInvalidControl(): void {
    const firstElementWithError = document.querySelector('.mat-form-field.ng-invalid');
    if (firstElementWithError) {
      firstElementWithError.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
  }

}
