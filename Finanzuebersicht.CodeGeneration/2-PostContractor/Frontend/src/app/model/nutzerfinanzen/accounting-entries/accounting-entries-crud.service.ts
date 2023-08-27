import { Injectable } from '@angular/core';
import { IPagedResult, IPaginationOptions, toPaginationParams } from '@krz/material';
import { BackendCoreService } from 'src/app/services/backend/backend-core.service';
import { IAccountingEntryDto } from './dtos/i-accounting-entry-dto';
import { IAccountingEntryDtoData } from './dtos/i-accounting-entry-dto-data';
import { IAccountingEntryDtoExpanded } from './dtos/i-accounting-entry-dto-expanded';

@Injectable()
export class AccountingEntriesCrudService {

    constructor(private backendCoreService: BackendCoreService) { }

    public async getPagedAccountingEntries(paginationOptions: IPaginationOptions): Promise<IPagedResult<IAccountingEntryDtoExpanded>> {
        const url = '/nutzerfinanzen/accounting-entries?' + toPaginationParams(paginationOptions);
        return await this.backendCoreService.get<IPagedResult<IAccountingEntryDtoExpanded>>(url);
    }

    public async getAccountingEntryDetail(accountingEntryId: string): Promise<IAccountingEntryDtoExpanded> {
        return await this.backendCoreService.get<IAccountingEntryDtoExpanded>('/nutzerfinanzen/accounting-entries/' + accountingEntryId);
    }

    public async createAccountingEntry(accountingEntry: IAccountingEntryDtoData): Promise<string> {
        const options = {
            body: accountingEntry
        };

        const result = await this.backendCoreService.post<{ data: string }>('/nutzerfinanzen/accounting-entries', options);

        const newAccountingEntryId = result.data;
        return newAccountingEntryId;
    }

    public async updateAccountingEntry(accountingEntryUpdate: IAccountingEntryDto): Promise<void> {
        const options = {
            body: accountingEntryUpdate
        };

        await this.backendCoreService.put('/nutzerfinanzen/accounting-entries', options);
    }

    public async deleteAccountingEntry(accountingEntryId: string): Promise<void> {
        await this.backendCoreService.delete('/nutzerfinanzen/accounting-entries/' + accountingEntryId);
    }

}
