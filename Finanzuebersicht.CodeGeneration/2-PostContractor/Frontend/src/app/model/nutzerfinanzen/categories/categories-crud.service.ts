import { Injectable } from '@angular/core';
import { IPagedResult, IPaginationOptions, toPaginationParams } from '@krz/material';
import { BackendCoreService } from 'src/app/services/backend/backend-core.service';
import { ICategoryDto } from './dtos/i-category-dto';
import { ICategoryDtoData } from './dtos/i-category-dto-data';
import { ICategoryDtoExpanded } from './dtos/i-category-dto-expanded';

@Injectable()
export class CategoriesCrudService {

    constructor(private backendCoreService: BackendCoreService) { }

    public async getPagedCategories(paginationOptions: IPaginationOptions): Promise<IPagedResult<ICategoryDtoExpanded>> {
        const url = '/nutzerfinanzen/categories?' + toPaginationParams(paginationOptions);
        return await this.backendCoreService.get<IPagedResult<ICategoryDtoExpanded>>(url);
    }

    public async getCategoryDetail(categoryId: string): Promise<ICategoryDtoExpanded> {
        return await this.backendCoreService.get<ICategoryDtoExpanded>('/nutzerfinanzen/categories/' + categoryId);
    }

    public async createCategory(category: ICategoryDtoData): Promise<string> {
        const options = {
            body: category
        };

        const result = await this.backendCoreService.post<{ data: string }>('/nutzerfinanzen/categories', options);

        const newCategoryId = result.data;
        return newCategoryId;
    }

    public async updateCategory(categoryUpdate: ICategoryDto): Promise<void> {
        const options = {
            body: categoryUpdate
        };

        await this.backendCoreService.put('/nutzerfinanzen/categories', options);
    }

    public async deleteCategory(categoryId: string): Promise<void> {
        await this.backendCoreService.delete('/nutzerfinanzen/categories/' + categoryId);
    }

}
