import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { DropdownDataSource, FormController } from '@krz/material';
import { AccountingEntriesCrudService } from 'src/app/model/nutzerfinanzen/accounting-entries/accounting-entries-crud.service';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { ICategoryDtoExpanded } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto-expanded';

export interface AccountingEntryCreateDialogForm {
  categoryId: string;
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
}

@Component({
  selector: 'app-accounting-entry-create',
  templateUrl: './accounting-entry-create.dialog.html',
  styleUrls: ['./accounting-entry-create.dialog.scss']
})
export class AccountingEntryCreateDialog implements OnInit {

  formController: FormController<AccountingEntryCreateDialogForm>;

  categoryDataSource: DropdownDataSource<ICategoryDtoExpanded>;

  constructor(
    private accountingEntriesCrudService: AccountingEntriesCrudService,
    private categoriesCrudService: CategoriesCrudService,
    private formBuilder: UntypedFormBuilder,
    private router: Router,
    private dialogRef: MatDialogRef<AccountingEntryCreateDialog>) {
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
      auftragskonto: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(30)],
      },
      buchungsdatum: {
        validators: [Validators.required],
      },
      valutaDatum: {
        validators: [Validators.required],
      },
      buchungstext: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(300)],
      },
      verwendungszweck: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(4000)],
      },
      glaeubigerId: {
        validators: [Validators.maxLength(100)],
      },
      mandatsreferenz: {
        validators: [Validators.maxLength(100)],
      },
      sammlerreferenz: {
        validators: [Validators.maxLength(100)],
      },
      lastschriftUrsprungsbetrag: { },
      auslagenersatzRuecklastschrift: {
        validators: [Validators.maxLength(1000)],
      },
      beguenstigter: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(2000)],
      },
      iBAN: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(50)],
      },
      bIC: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(50)],
      },
      betrag: {
        validators: [Validators.required],
      },
      waehrung: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(10)],
      },
      info: {
        validators: [Validators.required, Validators.minLength(1), Validators.maxLength(4000)],
      },
    });
  }

  async onCreateClicked(): Promise<void> {
    this.formController.formGroup.markAllAsTouched();
    if (!this.formController.formGroup.valid) {
      this.scrollToFirstInvalidControl();
      return;
    }

    const accountingEntryId = await this.accountingEntriesCrudService.createAccountingEntry(this.formController.formGroup.getRawValue());
    this.dialogRef.close();
    await this.router.navigate(['/nutzerfinanzen/accounting-entries/detail', accountingEntryId]);
  }

  scrollToFirstInvalidControl(): void {
    const firstElementWithError = document.querySelector('.mat-form-field.ng-invalid');
    if (firstElementWithError) {
      firstElementWithError.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
  }

}
