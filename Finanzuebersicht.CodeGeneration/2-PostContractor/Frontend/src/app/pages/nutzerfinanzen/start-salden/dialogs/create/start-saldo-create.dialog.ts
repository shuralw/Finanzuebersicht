import { Component, OnInit } from '@angular/core';
import { UntypedFormBuilder, Validators } from '@angular/forms';
import { MatDialogRef } from '@angular/material/dialog';
import { Router } from '@angular/router';
import { FormController } from '@krz/material';
import { StartSaldenCrudService } from 'src/app/model/nutzerfinanzen/start-salden/start-salden-crud.service';

export interface StartSaldoCreateDialogForm {
  betrag: number;
  amDatum: Date;
}

@Component({
  selector: 'app-start-saldo-create',
  templateUrl: './start-saldo-create.dialog.html',
  styleUrls: ['./start-saldo-create.dialog.scss']
})
export class StartSaldoCreateDialog implements OnInit {

  formController: FormController<StartSaldoCreateDialogForm>;

  constructor(
    private startSaldenCrudService: StartSaldenCrudService,
    private formBuilder: UntypedFormBuilder,
    private router: Router,
    private dialogRef: MatDialogRef<StartSaldoCreateDialog>) {
  }

  async ngOnInit(): Promise<void> {
    this.initializeDataSources();
    this.setupFormController();
  }

  initializeDataSources() {
  }

  setupFormController() {
    this.formController = new FormController(this.formBuilder, {
      betrag: {
        validators: [Validators.required],
      },
      amDatum: {
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

    const startSaldoId = await this.startSaldenCrudService.createStartSaldo(this.formController.formGroup.getRawValue());
    this.dialogRef.close();
    await this.router.navigate(['/nutzerfinanzen/start-salden/detail', startSaldoId]);
  }

  scrollToFirstInvalidControl(): void {
    const firstElementWithError = document.querySelector('.mat-form-field.ng-invalid');
    if (firstElementWithError) {
      firstElementWithError.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
  }

}
