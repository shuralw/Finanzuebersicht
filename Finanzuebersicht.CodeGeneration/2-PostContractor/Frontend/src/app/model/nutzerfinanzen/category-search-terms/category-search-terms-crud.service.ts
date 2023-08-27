import { Injectable } from '@angular/core';
import { IPagedResult, IPaginationOptions, toPaginationParams } from '@krz/material';
import { BackendCoreService } from 'src/app/services/backend/backend-core.service';
import { ICategorySearchTermDto } from './dtos/i-category-search-term-dto';
import { ICategorySearchTermDtoData } from './dtos/i-category-search-term-dto-data';
import { ICategorySearchTermDtoExpanded } from './dtos/i-category-search-term-dto-expanded';

@Injectable()
export class CategorySearchTermsCrudService {

    constructor(private backendCoreService: BackendCoreService) { }

    public async getPagedCategorySearchTerms(paginationOptions: IPaginationOptions): Promise<IPagedResult<ICategorySearchTermDtoExpanded>> {
        const url = '/nutzerfinanzen/category-search-terms?' + toPaginationParams(paginationOptions);
        return await this.backendCoreService.get<IPagedResult<ICategorySearchTermDtoExpanded>>(url);
    }

    public async getCategorySearchTermDetail(categorySearchTermId: string): Promise<ICategorySearchTermDtoExpanded> {
        return await this.backendCoreService.get<ICategorySearchTermDtoExpanded>('/nutzerfinanzen/category-search-terms/' + categorySearchTermId);
    }

    public async createCategorySearchTerm(categorySearchTerm: ICategorySearchTermDtoData): Promise<string> {
        const options = {
            body: categorySearchTerm
        };

        const result = await this.backendCoreService.post<{ data: string }>('/nutzerfinanzen/category-search-terms', options);

        const newCategorySearchTermId = result.data;
        return newCategorySearchTermId;
    }

    public async updateCategorySearchTerm(categorySearchTermUpdate: ICategorySearchTermDto): Promise<void> {
        const options = {
            body: categorySearchTermUpdate
        };

        await this.backendCoreService.put('/nutzerfinanzen/category-search-terms', options);
    }

    public async deleteCategorySearchTerm(categorySearchTermId: string): Promise<void> {
        await this.backendCoreService.delete('/nutzerfinanzen/category-search-terms/' + categorySearchTermId);
    }

}
