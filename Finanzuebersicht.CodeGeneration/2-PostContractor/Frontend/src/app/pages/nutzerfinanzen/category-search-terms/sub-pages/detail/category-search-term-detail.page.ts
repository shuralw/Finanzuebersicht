import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { DropdownDataSource, FormController } from '@krz/material';
import { ConfirmationDialogService } from 'src/app/components/ui/confirmation-dialog/confirmation-dialog.service';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { ICategoryDtoExpanded } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto-expanded';
import { CategorySearchTermsCrudService } from 'src/app/model/nutzerfinanzen/category-search-terms/category-search-terms-crud.service';
import { ICategorySearchTermDtoExpanded } from 'src/app/model/nutzerfinanzen/category-search-terms/dtos/i-category-search-term-dto-expanded';
import { AppEventService } from 'src/app/services/event/app-event.service';

export interface CategorySearchTermDetailPageForm {
  id: string;
  categoryId: string;
  term: string;
}

@Component({
  selector: 'app-category-search-term-detail',
  templateUrl: './category-search-term-detail.page.html',
  styleUrls: ['./category-search-term-detail.page.scss']
})
export class CategorySearchTermDetailPage implements OnInit {

  categorySearchTermId: string;
  categorySearchTerm: ICategorySearchTermDtoExpanded;

  formController: FormController<CategorySearchTermDetailPageForm>;

  categoryDataSource: DropdownDataSource<ICategoryDtoExpanded>;

  constructor(
    private categorySearchTermsCrudService: CategorySearchTermsCrudService,
    private confirmationDialogService: ConfirmationDialogService,
    private appEventService: AppEventService,
    private categoriesCrudService: CategoriesCrudService,
    private formBuilder: UntypedFormBuilder,
    private activatedRoute: ActivatedRoute,
    private router: Router) {
  }

  async ngOnInit(): Promise<void> {
    this.initializeDataSources();
    this.setupFormController();

    this.activatedRoute.params.subscribe((params) => {
      if (params.id) {
        this.categorySearchTermId = params.id;
        this.loadCategorySearchTerm().then().catch((error) => {
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
      categoryId: {
        validators: [Validators.required],
      },
      term: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(100)],
      },
    });
  }

  async onSaveClicked(): Promise<void> {
    this.formController.formGroup.markAllAsTouched();
    if (!this.formController.formGroup.valid) {
      return;
    }

    const categorySearchTermUpdate = this.formController.formGroup.getRawValue();
    await this.categorySearchTermsCrudService.updateCategorySearchTerm(categorySearchTermUpdate);
    this.appEventService.newSuccess("Category Search Term wurde gespeichert.");
  }

  async onDeleteClicked(): Promise<void> {
    if (await this.confirmationDialogService.askForConfirmation('Wollen Sie wirklich Category Search Term \'' + this.categorySearchTerm.id + '\' löschen?')) {
      await this.categorySearchTermsCrudService.deleteCategorySearchTerm(this.categorySearchTerm.id);
      await this.router.navigate(['/nutzerfinanzen/category-search-terms']);
    }
  }

  private async loadCategorySearchTerm(): Promise<void> {
    this.categorySearchTerm = null;
    this.categorySearchTerm = await this.categorySearchTermsCrudService.getCategorySearchTermDetail(this.categorySearchTermId);

    this.formController.formGroup.patchValue(this.categorySearchTerm);
    this.formController.setupRegistrations();
  }

}
