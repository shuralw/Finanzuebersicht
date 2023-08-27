import { ICategoryDto } from 'src/app/model/nutzerfinanzen/categories/dtos/i-category-dto';

export interface ICategoryDtoExpanded extends ICategoryDto {
    categoryId: string;
    category: ICategoryDto;
}
