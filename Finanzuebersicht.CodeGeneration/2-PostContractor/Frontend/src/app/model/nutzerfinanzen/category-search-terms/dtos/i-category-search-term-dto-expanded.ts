import { ICategoryDto } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto';
import { ICategorySearchTermDto } from './i-category-search-term-dto';

export interface ICategorySearchTermDtoExpanded extends ICategorySearchTermDto {
    categoryId: string;
    category: ICategoryDto;
}
