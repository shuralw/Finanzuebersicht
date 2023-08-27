import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { DropdownDataSource, FormController } from '@krz/material';
import { ConfirmationDialogService } from 'src/app/components/ui/confirmation-dialog/confirmation-dialog.service';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { ICategoryDtoExpanded } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto-expanded';
import { AppEventService } from 'src/app/services/event/app-event.service';

export interface CategoryDetailPageForm {
  id: string;
  title: string;
  color: string;
  categoryId: string;
}

@Component({
  selector: 'app-category-detail',
  templateUrl: './category-detail.page.html',
  styleUrls: ['./category-detail.page.scss']
})
export class CategoryDetailPage implements OnInit {

  categoryId: string;
  category: ICategoryDtoExpanded;

  formController: FormController<CategoryDetailPageForm>;

  categoryDataSource: DropdownDataSource<ICategoryDtoExpanded>;

  constructor(
    private categoriesCrudService: CategoriesCrudService,
    private confirmationDialogService: ConfirmationDialogService,
    private appEventService: AppEventService,
    private formBuilder: UntypedFormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router) {
  }

  async ngOnInit(): Promise<void> {
    this.initializeDataSources();
    this.setupFormController();

    this.activatedRoute.params.subscribe((params) => {
      if (params.id) {
        this.categoryId = params.id;
        this.loadCategory().then().catch((error) => {
          console.error(error);
        });
      }
    });
  }

  initializeDataSources() {

    this.categoryDataSource = new DropdownDataSource({
      filterField: 'id',
      getPagedData: (options) => this.categoriesCrudService.getPagedCategories(options),
    });
  }

  setupFormController() {
    this.formController = new FormController(this.formBuilder, {
      id: {
      },
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

  async onSaveClicked(): Promise<void> {
    this.formController.formGroup.markAllAsTouched();
    if (!this.formController.formGroup.valid) {
      return;
    }

    const categoryUpdate = this.formController.formGroup.getRawValue();
    await this.categoriesCrudService.updateCategory(categoryUpdate);
    this.appEventService.newSuccess("Category wurde gespeichert.");
  }

  async onDeleteClicked(): Promise<void> {
    if (await this.confirmationDialogService.askForConfirmation('Wollen Sie wirklich Category \'' + this.category.id + '\' löschen?')) {
      await this.categoriesCrudService.deleteCategory(this.category.id);
      await this.router.navigate(['/nutzerfinanzen/categories']);
    }
  }

  private async loadCategory(): Promise<void> {
    this.category = null;
    this.category = await this.categoriesCrudService.getCategoryDetail(this.categoryId);

    this.formController.formGroup.patchValue(this.category);
    this.formController.setupRegistrations();
  }

}
