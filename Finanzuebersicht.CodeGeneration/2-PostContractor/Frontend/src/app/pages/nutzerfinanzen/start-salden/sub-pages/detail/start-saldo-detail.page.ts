import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { FormController } from '@krz/material';
import { ConfirmationDialogService } from 'src/app/components/ui/confirmation-dialog/confirmation-dialog.service';
import { IStartSaldoDtoExpanded } from 'src/app/model/nutzerfinanzen/start-salden/dtos/i-start-saldo-dto-expanded';
import { StartSaldenCrudService } from 'src/app/model/nutzerfinanzen/start-salden/start-salden-crud.service';
import { AppEventService } from 'src/app/services/event/app-event.service';

export interface StartSaldoDetailPageForm {
  id: string;
  betrag: number;
  amDatum: Date;
}

@Component({
  selector: 'app-start-saldo-detail',
  templateUrl: './start-saldo-detail.page.html',
  styleUrls: ['./start-saldo-detail.page.scss']
})
export class StartSaldoDetailPage implements OnInit {

  startSaldoId: string;
  startSaldo: IStartSaldoDtoExpanded;

  formController: FormController<StartSaldoDetailPageForm>;

  constructor(
    private startSaldenCrudService: StartSaldenCrudService,
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
        this.startSaldoId = params.id;
        this.loadStartSaldo().then().catch((error) => {
          console.error(error);
        });
      }
    });
  }

  initializeDataSources() {
  }

  setupFormController() {
    this.formController = new FormController(this.formBuilder, {
      id: {
      },
      betrag: {
        validators: [Validators.required],
      },
      amDatum: {
        validators: [Validators.required],
      },
    });
  }

  async onSaveClicked(): Promise<void> {
    this.formController.formGroup.markAllAsTouched();
    if (!this.formController.formGroup.valid) {
      return;
    }

    const startSaldoUpdate = this.formController.formGroup.getRawValue();
    await this.startSaldenCrudService.updateStartSaldo(startSaldoUpdate);
    this.appEventService.newSuccess("Start Saldo wurde gespeichert.");
  }

  async onDeleteClicked(): Promise<void> {
    if (await this.confirmationDialogService.askForConfirmation('Wollen Sie wirklich Start Saldo \'' + this.startSaldo.id + '\' löschen?')) {
      await this.startSaldenCrudService.deleteStartSaldo(this.startSaldo.id);
      await this.router.navigate(['/nutzerfinanzen/start-salden']);
    }
  }

  private async loadStartSaldo(): Promise<void> {
    this.startSaldo = null;
    this.startSaldo = await this.startSaldenCrudService.getStartSaldoDetail(this.startSaldoId);

    this.formController.formGroup.patchValue(this.startSaldo);
    this.formController.setupRegistrations();
  }

}
