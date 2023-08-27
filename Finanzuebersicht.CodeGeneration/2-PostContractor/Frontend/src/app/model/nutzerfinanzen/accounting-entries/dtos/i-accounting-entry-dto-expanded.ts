import { ICategoryDto } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto';
import { IAccountingEntryDto } from './i-accounting-entry-dto';

export interface IAccountingEntryDtoExpanded extends IAccountingEntryDto {
    categoryId: string;
    category: ICategoryDto;
}
