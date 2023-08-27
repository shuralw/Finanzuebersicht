import { Injectable } from '@angular/core';
import { IPagedResult, IPaginationOptions, toPaginationParams } from '@krz/material';
import { BackendCoreService } from 'src/app/services/backend/backend-core.service';
import { IStartSaldoDto } from './dtos/i-start-saldo-dto';
import { IStartSaldoDtoData } from './dtos/i-start-saldo-dto-data';
import { IStartSaldoDtoExpanded } from './dtos/i-start-saldo-dto-expanded';

@Injectable()
export class StartSaldenCrudService {

    constructor(private backendCoreService: BackendCoreService) { }

    public async getPagedStartSalden(paginationOptions: IPaginationOptions): Promise<IPagedResult<IStartSaldoDtoExpanded>> {
        const url = '/nutzerfinanzen/start-salden?' + toPaginationParams(paginationOptions);
        return await this.backendCoreService.get<IPagedResult<IStartSaldoDtoExpanded>>(url);
    }

    public async getStartSaldoDetail(startSaldoId: string): Promise<IStartSaldoDtoExpanded> {
        return await this.backendCoreService.get<IStartSaldoDtoExpanded>('/nutzerfinanzen/start-salden/' + startSaldoId);
    }

    public async createStartSaldo(startSaldo: IStartSaldoDtoData): Promise<string> {
        const options = {
            body: startSaldo
        };

        const result = await this.backendCoreService.post<{ data: string }>('/nutzerfinanzen/start-salden', options);

        const newStartSaldoId = result.data;
        return newStartSaldoId;
    }

    public async updateStartSaldo(startSaldoUpdate: IStartSaldoDto): Promise<void> {
        const options = {
            body: startSaldoUpdate
        };

        await this.backendCoreService.put('/nutzerfinanzen/start-salden', options);
    }

    public async deleteStartSaldo(startSaldoId: string): Promise<void> {
        await this.backendCoreService.delete('/nutzerfinanzen/start-salden/' + startSaldoId);
    }

}
