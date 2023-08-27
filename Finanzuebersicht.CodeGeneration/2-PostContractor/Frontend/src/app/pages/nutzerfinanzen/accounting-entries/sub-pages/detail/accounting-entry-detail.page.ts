import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { DropdownDataSource, FormController } from '@krz/material';
import { ConfirmationDialogService } from 'src/app/components/ui/confirmation-dialog/confirmation-dialog.service';
import { AccountingEntriesCrudService } from 'src/app/model/nutzerfinanzen/accounting-entries/accounting-entries-crud.service';
import { IAccountingEntryDtoExpanded } from 'src/app/model/nutzerfinanzen/accounting-entries/dtos/i-accounting-entry-dto-expanded';
import { CategoriesCrudService } from 'src/app/model/nutzerfinanzen/categories/categories-crud.service';
import { ICategoryDtoExpanded } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto-expanded';
import { AppEventService } from 'src/app/services/event/app-event.service';

export interface AccountingEntryDetailPageForm {
  id: string;
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
  selector: 'app-accounting-entry-detail',
  templateUrl: './accounting-entry-detail.page.html',
  styleUrls: ['./accounting-entry-detail.page.scss']
})
export class AccountingEntryDetailPage implements OnInit {

  accountingEntryId: string;
  accountingEntry: IAccountingEntryDtoExpanded;

  formController: FormController<AccountingEntryDetailPageForm>;

  categoryDataSource: DropdownDataSource<ICategoryDtoExpanded>;

  constructor(
    private accountingEntriesCrudService: AccountingEntriesCrudService,
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
        this.accountingEntryId = params.id;
        this.loadAccountingEntry().then().catch((error) => {
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

  async onSaveClicked(): Promise<void> {
    this.formController.formGroup.markAllAsTouched();
    if (!this.formController.formGroup.valid) {
      return;
    }

    const accountingEntryUpdate = this.formController.formGroup.getRawValue();
    await this.accountingEntriesCrudService.updateAccountingEntry(accountingEntryUpdate);
    this.appEventService.newSuccess("Accounting Entry wurde gespeichert.");
  }

  async onDeleteClicked(): Promise<void> {
    if (await this.confirmationDialogService.askForConfirmation('Wollen Sie wirklich Accounting Entry \'' + this.accountingEntry.id + '\' löschen?')) {
      await this.accountingEntriesCrudService.deleteAccountingEntry(this.accountingEntry.id);
      await this.router.navigate(['/nutzerfinanzen/accounting-entries']);
    }
  }

  private async loadAccountingEntry(): Promise<void> {
    this.accountingEntry = null;
    this.accountingEntry = await this.accountingEntriesCrudService.getAccountingEntryDetail(this.accountingEntryId);

    this.formController.formGroup.patchValue(this.accountingEntry);
    this.formController.setupRegistrations();
  }

}
