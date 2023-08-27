import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: 'categories',
    loadChildren: () => import('./categories/categories-pages.module')
      .then(m => m.CategoriesPagesModule)
  },
  {
    path: 'accounting-entries',
    loadChildren: () => import('./accounting-entries/accounting-entries-pages.module')
      .then(m => m.AccountingEntriesPagesModule)
  },
  {
    path: 'category-search-terms',
    loadChildren: () => import('./category-search-terms/category-search-terms-pages.module')
      .then(m => m.CategorySearchTermsPagesModule)
  },
  {
    path: 'start-salden',
    loadChildren: () => import('./start-salden/start-salden-pages.module')
      .then(m => m.StartSaldenPagesModule)
  },
  {
    path: '**',
    redirectTo: 'categories',
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class NutzerfinanzenPagesRouting { }
