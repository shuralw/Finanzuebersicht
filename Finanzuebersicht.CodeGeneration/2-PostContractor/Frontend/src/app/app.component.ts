import { HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { KrzHomeMainMenuItem, KrzHomeUserMenu, KrzRestService } from '@krz/common';
import { validateDn } from './helpers/validation.helper';
import { SessionInformationService } from './model/session-management/sessions/services/session-information.service';
import { SessionService, SessionState } from './model/session-management/sessions/session.service';
import { IPermission } from './model/user-management/permissions/dtos/i-permission';
import { AppEventSnackbarService } from './services/event/app-event-snackbar.service';
import { AppEventService } from './services/event/app-event.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {

  userMenu: KrzHomeUserMenu = undefined;
  mainMenu: KrzHomeMainMenuItem[] = [];

  locationText: string;

  loading = true;

  constructor(
    private router: Router,
    private appEventService: AppEventService,
    private appEventSnackbarService: AppEventSnackbarService,
    private restService: KrzRestService,
    private sessionService: SessionService,
    private sessionInformationService: SessionInformationService) {

  }

  async ngOnInit(): Promise<void> {
    this.initializeErrorSnackbar();
    await this.sessionService.initialize();

    this.sessionService.onSessionStateChange().subscribe((sessionState: SessionState) => {
      void this.onSessionStateChange(sessionState);
    });

    await this.validateLocation(location.pathname);
    await this.setupMenus();

    this.loading = false;
  }

  // --------------------- Menu Actions ---------------------

  goBack(): void {
    window.history.back();
  }

  async logout(): Promise<void> {
    await this.sessionService.logout();
    await this.router.navigate(['/login']);
  }

  // ------------- Initialization -------------

  private initializeErrorSnackbar(): void {
    this.appEventSnackbarService.initialize();
    this.restService.setGlobalErrorInterceptor({
      intercept: async (response: HttpErrorResponse) => {
        if (response.status === 0) {
          this.appEventService.newError('Es konnte keine Verbindung mit dem Server hergestellt werden.');
        } else if (response.status === 403) {
          this.appEventService.newError('Sie verfügen nicht über die Berechtigung diese Aktion durchzuführen.');
        } else if (response.status !== 401) {
          this.appEventService.newDefaultBackendError(response.error);
        }
      }
    });
  }

  private async onSessionStateChange(sessionState: SessionState): Promise<void> {
    switch (sessionState) {
      case SessionState.RefreshTokenExpired:
        this.appEventService.newDefaultBackendError('Ihr Sitzung ist abgelaufen');
        await this.router.navigate(['/login']);
        await this.setupMenus();
        break;
      case SessionState.ManuallyLoggedOut:
        await this.router.navigate(['/login']);
        await this.setupMenus();
        break;
      case SessionState.ManuallyLoggedIn:
        this.appEventService.newSuccess('Sie haben sich erfolgreich angemeldet.');
        await this.router.navigate(['/home']);
        await this.setupMenus();
        break;
      case SessionState.AccessTokenRefreshed:
        await this.setupMenus();
        break;
    }
  }

  async validateLocation(url: string = this.router.url): Promise<void> {
    const isLoggedIn = this.sessionService.isLoggedIn();

    if (!url.startsWith('/login') && !isLoggedIn) {
      await this.router.navigate(['/login']);
    } else if (url.startsWith('/login') && isLoggedIn) {
      await this.router.navigate(['/home']);
    }
  }

  // ------------- Menus -------------

  async setupMenus(): Promise<void> {
    await this.setupMainMenu();
    await this.setupUserMenu();
  }

  // ------------- Main Menu -------------

  private async setupMainMenu(): Promise<void> {
    if (this.sessionService.isLoggedIn()) {
      await this.setupLoggedInMainMenu();
    } else {
      this.setupLoggedOutMainMenu();
    }
  }

  private setupLoggedOutMainMenu(): void {
    this.mainMenu = [{
      text: 'Login',
      routerLink: '/login',
      hidden: true,
      subMenu: [
        {
          text: 'Passwort vergessen',
          routerLink: '/login/forgot-password',
          hidden: true,
          backActive: true
        },
        {
          text: 'Passwort zurücksetzen',
          routerLink: '/login/reset-password',
          hidden: true
        }
      ]
    }];
  }

  private async setupLoggedInMainMenu(): Promise<void> {
    const permission = await this.sessionInformationService.getPermissions();
    const emailUserId = await this.sessionInformationService.getEmailUserId();

    this.mainMenu = [];
    this.addMainMenuItems(permission);
    this.addPasswordChangeToMainMenu(emailUserId);
  }

  private addMainMenuItems(permission: IPermission): void {
    this.mainMenu.push({
      text: 'Startseite',
      routerLink: '/home',
      iconSrc: '/assets/icons/home.svg'
    });
  }

  private addPasswordChangeToMainMenu(emailUserId: string): void {
    if (emailUserId !== null) {
      this.mainMenu.push({
        text: 'Passwort ändern',
        routerLink: '/change-password',
        hidden: true
      });
    }
  }

  // ------------- User Menu -------------

  private async setupUserMenu(): Promise<void> {
    if (this.sessionService.isLoggedIn()) {
      const name = await this.sessionInformationService.getName();
      const mandantName = await this.sessionInformationService.getMandantName();
      const emailUserId = await this.sessionInformationService.getEmailUserId();
      this.setupLoggedInUserMenu(name, mandantName, emailUserId);
    } else {
      this.userMenu = undefined;
    }
  }

  private setupLoggedInUserMenu(username: string, mandantName: string, emailUserId: string): void {
    this.userMenu = {
      text: this.extractUsername(username),
      iconSrc: '/assets/icons/user.svg',
      items: [
        {
          isHeader: true,
          text: 'Mandant:'
        },
        {
          text: mandantName
        },
        {
          isHeader: true,
          text: 'Benutzer:'
        },
        {
          text: 'Abmelden',
          iconSrc: '/assets/icons/sign-out.svg',
          onClick: async () => {
            await this.logout();
          }
        }
      ]
    };

    if (emailUserId !== null) {
      this.userMenu.items.splice(3, 0, {
        text: 'Passwort ändern',
        iconSrc: '/assets/icons/key.svg',
        onClick: async () => {
          await this.router.navigate(['/change-password']);
        }
      });
    }
  }

  private extractUsername(username: string): string {
    if (validateDn(username)) {
      username = username.split('\\,').join('####');
      username = username.split(',')[0].split('=')[1];
      username = username.split('####').join(',');
      return username;
    }
    return username;
  }

}

    this.mainMenu.push({
      text: 'Nutzerfinanzen',
      routerLink: '/nutzerfinanzen',
      subMenu: [
        {
          text: 'Categories',
          routerLink: '/nutzerfinanzen/categories',
        },
        {
          text: 'Categories',
          routerLink: '/nutzerfinanzen/categories',
        },
        {
          text: 'Accounting Entries',
          routerLink: '/nutzerfinanzen/accounting-entries',
        },
        {
          text: 'Category Search Terms',
          routerLink: '/nutzerfinanzen/category-search-terms',
        },
        {
          text: 'Start Salden',
          routerLink: '/nutzerfinanzen/start-salden',
        },
        {
          text: 'Categories',
          routerLink: '/nutzerfinanzen/categories',
        },
        {
          text: 'Accounting Entries',
          routerLink: '/nutzerfinanzen/accounting-entries',
        },
        {
          text: 'Category Search Terms',
          routerLink: '/nutzerfinanzen/category-search-terms',
        },
        {
          text: 'Start Salden',
          routerLink: '/nutzerfinanzen/start-salden',
        },
      ]
    });

    this.mainMenu.push({
      text: 'Nutzerfinanzen',
      routerLink: '/nutzerfinanzen',
      subMenu: [
      ]
    });

    this.mainMenu.push({
      text: 'Nutzerfinanzen',
      routerLink: '/nutzerfinanzen',
      subMenu: [
      ]
    });
