USE [FinanzuebersichtCore.Contractor]
GO
INSERT [dbo].[AdminEmailUsers] ([Id], [Email], [PasswordHash], [PasswordSalt]) VALUES (N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'dkb@example.org', N'F+UttZvg6gtCAQlEJ7RBihdu+TVD2LXHj5VHYgNObWMmjo6pfEoYRLsf6UUQzC9F92tt/lNxJUpA8D64cNpt6A==', N'50000.u46XvXpDWWpj+VmiH4H7HPgCKgFCwAMXTCygako4vze7dA==')
GO
INSERT [dbo].[AdminEmailUsers] ([Id], [Email], [PasswordHash], [PasswordSalt]) VALUES (N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'sparkasse@example.org', N'F+UttZvg6gtCAQlEJ7RBihdu+TVD2LXHj5VHYgNObWMmjo6pfEoYRLsf6UUQzC9F92tt/lNxJUpA8D64cNpt6A==', N'50000.u46XvXpDWWpj+VmiH4H7HPgCKgFCwAMXTCygako4vze7dA==')
GO
INSERT [dbo].[AdminRefreshTokens] ([Id], [AdminEmailUserId], [AdminAdUserId], [Username], [ExpiresOn]) VALUES (N'54d5b3e2-e8b6-40bb-b9e4-46030e4a61e3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', NULL, N'dkb@example.org', CAST(N'2022-09-29T15:49:09.610' AS DateTime))
GO
INSERT [dbo].[AdminRefreshTokens] ([Id], [AdminEmailUserId], [AdminAdUserId], [Username], [ExpiresOn]) VALUES (N'34440432-b1da-448d-a905-d298fe2c3a9f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', NULL, N'admin2@example.org', CAST(N'2022-09-29T15:21:37.833' AS DateTime))
GO
INSERT [dbo].[AdminAccessTokens] ([Id], [AdminRefreshTokenId], [AdminEmailUserId], [AdminAdUserId], [Username], [ExpiresOn]) VALUES (N'3a1cbd73-6131-4414-b854-f68d204978ae', N'54d5b3e2-e8b6-40bb-b9e4-46030e4a61e3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', NULL, N'dkb@example.org', CAST(N'2022-09-29T09:49:09.627' AS DateTime))
GO
INSERT [dbo].[AdminAccessTokenCachedPermissions] ([AdminAccessTokenId], [Benutzerverwaltung], [BerichteBearbeiten], [BerichteLesen], [BetriebBearbeiten], [BetriebLesen], [DokumenteBearbeiten], [DokumenteLesen], [GebietskoerperschaftBearbeiten], [GebietskoerperschaftLesen], [GrundDatenBearbeiten], [GrundDatenLesen], [HilfetextBearbeiten], [HilfetextLesen], [ImportExportSchemataBearbeiten], [ImportExportSchemataLesen], [LoginAlsBetrieb], [LoginAlsGebietskoerperschaft], [LoginAlsSchule], [LoginAlsSchulkind], [NachrichtenBearbeiten], [NachrichtenLesen], [NewsletterBearbeiten], [NewsletterLesen], [SchuleBearbeiten], [SchuleLesen], [SchulkindBearbeiten], [SchulkindLesen], [SchulsystemBearbeiten], [SchulsystemLesen], [StatistikenBearbeiten], [StatistikenLesen]) VALUES (N'3a1cbd73-6131-4414-b854-f68d204978ae', CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)))
GO
INSERT [dbo].[AdminUserGroups] ([Id], [Name]) VALUES (N'90671da2-a763-409b-92c2-5a2005cdbac8', N'Global Admins')
GO
INSERT [dbo].[StartSalden] ([Id], [EmailUserId], [Betrag], [AmDatum]) VALUES (N'6863e607-9d88-4a4c-bbcc-c55b5ac8448f', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', CAST(13901.18 AS Decimal(8, 2)), CAST(N'2022-04-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[AdminEmailUserPermissions] ([AdminEmailUserId], [Benutzerverwaltung], [BerichteBearbeiten], [BerichteLesen], [BetriebBearbeiten], [BetriebLesen], [DokumenteBearbeiten], [DokumenteLesen], [GebietskoerperschaftBearbeiten], [GebietskoerperschaftLesen], [GrundDatenBearbeiten], [GrundDatenLesen], [HilfetextBearbeiten], [HilfetextLesen], [ImportExportSchemataBearbeiten], [ImportExportSchemataLesen], [LoginAlsBetrieb], [LoginAlsGebietskoerperschaft], [LoginAlsSchule], [LoginAlsSchulkind], [NachrichtenBearbeiten], [NachrichtenLesen], [NewsletterBearbeiten], [NewsletterLesen], [SchuleBearbeiten], [SchuleLesen], [SchulkindBearbeiten], [SchulkindLesen], [SchulsystemBearbeiten], [SchulsystemLesen], [StatistikenBearbeiten], [StatistikenLesen]) VALUES (N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)))
GO
INSERT [dbo].[AdminEmailUserPermissions] ([AdminEmailUserId], [Benutzerverwaltung], [BerichteBearbeiten], [BerichteLesen], [BetriebBearbeiten], [BetriebLesen], [DokumenteBearbeiten], [DokumenteLesen], [GebietskoerperschaftBearbeiten], [GebietskoerperschaftLesen], [GrundDatenBearbeiten], [GrundDatenLesen], [HilfetextBearbeiten], [HilfetextLesen], [ImportExportSchemataBearbeiten], [ImportExportSchemataLesen], [LoginAlsBetrieb], [LoginAlsGebietskoerperschaft], [LoginAlsSchule], [LoginAlsSchulkind], [NachrichtenBearbeiten], [NachrichtenLesen], [NewsletterBearbeiten], [NewsletterLesen], [SchuleBearbeiten], [SchuleLesen], [SchulkindBearbeiten], [SchulkindLesen], [SchulsystemBearbeiten], [SchulsystemLesen], [StatistikenBearbeiten], [StatistikenLesen]) VALUES (N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)))
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'b6b3bb7e-7c28-4c16-97ea-022d0a7965eb', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'HH-Kfz', N'#193437', NULL, NULL, N'85c2a738-e487-4ce8-a401-c46e94234944')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'137f48d9-f006-4fdc-9ec5-02fc1c490ec4', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'o2 DSL', N'#8ACEA9', NULL, NULL, N'e348fee5-5548-461e-9dcf-c1aef9c42273')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'46ad5ccb-f1ad-4214-863d-03389166b668', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Sport Henkel GmbH', N'#0D0C33', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2f5acf29-7d38-44f0-8cd0-039fae34c40e', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Fixkosten', N'#748386', NULL, NULL, NULL)
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'11e331ad-a2a6-4e33-84dc-0502e31b82cb', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Berufsunfähigkeitsversicherung', N'#897635', NULL, NULL, N'a7fe047d-44d7-4db3-8bd0-6f6494d5fd62')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'a5e9c89d-ebff-400c-8a75-07d70a7813e0', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Volleyball', N'#086e9d', NULL, NULL, N'e0eba376-13ae-41a5-a2cb-dc98f9e19ee9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'04cba1b4-6c17-4087-a189-0a20af368ab0', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Apollo', N'#8DAC7E', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'96fdc011-68df-4f34-ac1d-0ab9da56d983', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Handyvertrag', N'#c02d49', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'1fba19dd-fc80-46e4-957f-0b1283f025c5', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Schiedsrichterausrüstung', N'#110426', NULL, NULL, N'0df9b509-5a0a-4f82-9668-ee65a54e25c9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'4d46cd4b-221d-45e9-afbf-0b1463e29e07', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Altersvorsorge', N'#E2C742', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'3c061258-6bf8-414d-85e9-0bb15c74fa0f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Schuhe', N'#5c009d', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'7632566e-16a3-4eeb-9fb1-0df14dd3f098', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Sky', N'#3dc4e3', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Wocheneinkauf', N'#cb62a0', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'c7ca0008-9f91-4568-ade8-1836dec99366', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'TARA M Rheine', N'#2B2E89', NULL, NULL, N'0df9b509-5a0a-4f82-9668-ee65a54e25c9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'caff0264-acca-45ff-8477-18dab5d6acb6', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Rossmann', N'#2889b2', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'b4ae0c06-8b35-4512-a205-191d1f901498', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Tanken', N'#1d2538', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'37e82bdf-9f53-4306-af42-1a3b6efc7056', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Xbox Game Passs', N'#3dc4e3', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'14925695-e516-4213-8b2c-1c15211ffaef', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Telefonica', N'#B1E4A1', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'4590921c-ef62-459b-86b7-1dc59b11b451', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Spotify', N'#2E9BFA', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'832a56ca-2f8e-430a-8ed2-21d6f5d8054b', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Audible', N'#2ffd85', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'ffe64368-3154-4798-bbb5-22eb6799e6db', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Friseur', N'#b774c0', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'5c631ac8-d35b-4b8e-9c6e-245ad741748a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Fitnessstudio', N'#cf3d80', NULL, NULL, N'e0eba376-13ae-41a5-a2cb-dc98f9e19ee9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'9976bd0b-13f2-42c7-80fd-2719dff9e5ad', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Kontaktlinsen', N'#103db8', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'49867957-8e19-4739-affa-28c93a30359f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Studium', N'#610A12', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'3f7e2576-57fa-471d-a652-2a395a9d6d67', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Johanniter', N'#D82C0C', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2460cef6-d30e-40f6-b13b-2ace21cd16e6', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'TS Riemeier', N'#F86162', NULL, NULL, N'b4ae0c06-8b35-4512-a205-191d1f901498')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'17968dfa-d146-4faf-9d10-30161b04a85a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Deko', N'#d87f40', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'909d2b19-c931-4ac8-8b3f-30920c2a597f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Discord', N'#7289da', NULL, NULL, N'f09766ea-6a7b-47cf-b726-3c36c4e07c6a')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'51969830-1158-4121-a1e1-30f71a949cf7', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Kontaktlinsen', N'#103db8', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'83ec10ad-bf87-4835-aa84-33a0a10a44b5', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Geldautomat', N'#29fd56', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'b7595d53-f6b0-4a9a-9ea3-3ae7c6facfe4', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Bahn', N'#EC0016', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'f09766ea-6a7b-47cf-b726-3c36c4e07c6a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Internet', N'#57471d', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'6773ca70-c1be-47ca-8ce4-3d9a44b08613', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Ikea', N'#4cdd27', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'f1aa0742-deed-4d54-b1a2-3ead4bcc43bd', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Internet', N'#57471d', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'f418af91-5b22-423c-b6db-3eef4be69604', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'o2 DSL', N'#8ACEA9', NULL, NULL, N'e348fee5-5548-461e-9dcf-c1aef9c42273')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'7fa7bc54-9e7a-4b2c-8e91-48e3ff83e370', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Paypal', N'#eb2dc8', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'9936e373-2ce5-4c43-a3e1-4942f62b5c05', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'TV Lemgo Volleyball', N'#BBD617', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'd8c476fa-6205-40cd-bdc7-4b53897b5e01', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'DSL', N'#5DD33B', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'0d8c8b77-f36d-48fa-bd2b-4bddec705b6a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'HUK Coburg', N'#95EF4C', NULL, NULL, N'a7fe047d-44d7-4db3-8bd0-6f6494d5fd62')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'504d899e-3be2-44f0-8452-4d1aaf11ad51', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Paypal', N'#eb2dc8', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'd253f83e-12c3-4130-ba50-4f644769cf57', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Xbox Game Passs', N'#3dc4e3', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'309b7cb6-6a26-4234-9c90-504aeef92733', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Variable Kosten', N'#C5EFCB', NULL, NULL, NULL)
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'12552fa5-9d03-40e4-9043-53339b385c6d', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Sky', N'#15aa6f', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'81e762cb-7d21-4058-b526-5483c474db4e', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Restaurant', N'#12eee2', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'ede4cb2c-d0ce-4271-a3c3-56cbdaeb9028', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Spotify', N'#1DB954', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'ddf6461f-d8cb-4ce1-beca-58272305a880', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'asdasd', N'#411149', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'afe83043-8b6d-45bc-911b-5b8c778fd7b9', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Elektroartikel', N'#4de7d9', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'7b89e514-0870-48a5-a2ff-5ce23a16093a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Freizeitvergnügen', N'#5eee7d', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'4c2aa64b-85b5-4f12-b739-5d2f841810ed', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Tanken', N'#1d2538', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'050ebbee-75ab-48b7-a645-5faa981b1ab6', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Flurreinigung', N'#3F6FA0', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'0b66f643-51db-4768-adac-60fff93fcd66', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Studium', N'#610A12', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2293ec2c-c035-4bbd-a0ac-6194abd770c3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Zahnarzt', N'#d03f2e', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'cc77529f-4b19-4b57-9fef-6214ea167838', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Baumarkt', N'#54e0a8', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'6c38f4f9-35c7-42fe-8a3a-66ae3919fc50', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Studium', N'#de1c12', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'7295c2f4-8678-4196-af71-66d5fe0aac89', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Bücher', N'#4b21e0', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'f58abd73-2737-4f28-938b-6861bacda819', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Fitnessstudio', N'#cf3d80', NULL, NULL, N'e0eba376-13ae-41a5-a2cb-dc98f9e19ee9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'a72e6788-188a-4a6f-b5bd-6e618753aeb3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Ebay', N'#a4a6f5', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'a7fe047d-44d7-4db3-8bd0-6f6494d5fd62', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Versicherungen', N'#454545', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'0d670d24-a38e-4885-b11a-700641effa52', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'TV Lemgo Volleyball', N'#BBD617', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'878f2d6b-4e0f-414c-84c3-728f61715549', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Miete', N'#dd68a4', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Wocheneinkauf', N'#cb62a0', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'd6d814d3-2872-4a75-9c2a-7796cc2c4356', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Bücher', N'#4b21e0', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'bb438d51-e840-46a0-8b49-77fa21d5359e', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Geldautomat', N'#29fd56', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'44fc8f52-d0d8-468c-aaea-80f108427793', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Freizeitvergnügen', N'#5eee7d', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2d47e4ce-5311-4718-a2b1-8297a9c717a9', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'HH-Kfz', N'#193437', NULL, NULL, N'85c2a738-e487-4ce8-a401-c46e94234944')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'5dcfd9d3-5444-4e02-98c3-847fa82f3f8e', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Miete', N'#dd68a4', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'4aad8c46-16ee-41ec-8a2c-859477f646e5', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Audible', N'#2ffd85', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'1d5546ad-67b4-4397-92b9-883a23d424e0', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Fixkosten', N'#748386', NULL, NULL, NULL)
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'97ab7127-0384-4ec0-b9d3-892d24c6363f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Spotify', N'#1DB954', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'14eca051-7235-4f3a-a4ed-8a203107f5e7', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Hurricane', N'#4F4E6E', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'7b25ab72-40a0-4f09-b171-8b715a49572d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Zahnzusatzversicherung', N'#4566F8', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'11cd1cd2-6dbd-4604-9e12-8f6341ae76e2', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Geschenke', N'#132ced', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'01fd2412-1ebe-4426-884e-906f0d9cdcf3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Volleyball', N'#086e9d', NULL, NULL, N'e0eba376-13ae-41a5-a2cb-dc98f9e19ee9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'7ae4edc1-db6c-48e5-9559-91767d5be4cd', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'ADAC', N'#A9F38A', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'0511757d-0656-4c0b-9e94-919509cdc845', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Friseur', N'#b774c0', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'8edc0ebb-4ebd-42d6-909b-925d8107237e', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Bahn', N'#EC0016', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'd6638a19-6760-43c0-892f-95c691a9c37b', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Buena Vista', N'#F4E5F4', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'041c8294-58b0-4ac6-8bc6-98a34721cf5e', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Ebay', N'#a4a6f5', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2a00a232-bc03-459f-abe3-9aaa6ea7665d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Hausratversicherung', N'#8D2079', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'f55aee92-d4b2-4fa7-8181-9bc1d5b1a069', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Computerteile', N'#a740f6', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'b4dce68d-799b-46e2-8ce3-9d3334278fd2', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Telefonica', N'#B1E4A1', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'fc58248c-ecb1-41fa-9fe0-9f5cdcc95b5a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'ADAC', N'#A9F38A', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'553e511c-ddcf-442b-bfb9-a0a234299072', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Sky', N'#3dc4e3', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'0d4083a4-5483-4eb5-97fc-a4643a7406e9', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'asdasd', N'#411149', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'7800d159-94bf-459b-9d48-a540f243c406', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Spotify', N'#2E9BFA', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'c280cee5-867f-49d6-84ff-a5831e9c7439', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Hurricane', N'#4F4E6E', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'78d81ed8-e751-41d2-bf11-a8bd9887748c', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'KFZ Steuer', N'#7CF1FB', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'ec98d37a-574c-4bb0-a372-af32bc1cd3d8', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'IWEAR DIRECT', N'#D81403', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'bfa3d021-d417-4d54-bfc6-b2b7e319aed5', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Sportkleidung', N'#0701ec', NULL, NULL, N'0df9b509-5a0a-4f82-9668-ee65a54e25c9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'd954161c-24b6-48ac-b32a-b64bfc42a0c1', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Studium', N'#de1c12', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'bc3dbc83-e342-42f9-aa06-b6879bad5dbe', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Apotheke', N'#cdf155', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'4574e030-705e-4230-810f-b68f649362b7', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Kleidung', N'#b0bd1b', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'a0271860-faf8-4eb4-9d2d-b840597fa22b', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Handyvertrag', N'#c02d49', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'ad0b0511-107e-4bce-8fbc-bba490cf01dc', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Elektroartikel', N'#4de7d9', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Restaurant', N'#12eee2', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'b0a0c646-5239-4e30-b1b3-bd0d4f290eeb', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Ikea', N'#4cdd27', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2f69dee9-e6e4-421c-9393-be2f4ba89ce3', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Flurreinigung', N'#3F6FA0', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'6a59f7fc-cca7-43df-96bf-bfdbd73a36b0', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Sport Henkel GmbH', N'#0D0C33', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'a3a3342d-5764-4410-b896-c1224760e999', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Berufsunfähigkeitsversicherung', N'#897635', NULL, NULL, N'a7fe047d-44d7-4db3-8bd0-6f6494d5fd62')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'e348fee5-5548-461e-9dcf-c1aef9c42273', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'DSL', N'#5DD33B', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'9462e1ed-2b55-44a5-a7c4-c26d66bb06e1', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'IWEAR DIRECT', N'#D81403', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'1b61caab-145c-47df-a340-c2d8bf69b455', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Sport', N'#123456', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'85c2a738-e487-4ce8-a401-c46e94234944', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Autoreparatur (Fixkosten)', N'#b8bd92', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'44d2f8cc-1a68-4ebf-a2f0-c8cac09baa04', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Galaxus', N'#46aada', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Variable Kosten', N'#C5EFCB', NULL, NULL, NULL)
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'83075c2b-d616-4246-accb-cb1a9a0d9a4d', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Discord', N'#7289da', NULL, NULL, N'f09766ea-6a7b-47cf-b726-3c36c4e07c6a')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'd94def0b-10c5-4bee-9a17-cb4a2d17ca37', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Apollo', N'#8DAC7E', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'3c9af8fd-a6c8-4893-95e2-ce13e6aac769', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Sportkleidung', N'#0701ec', NULL, NULL, N'0df9b509-5a0a-4f82-9668-ee65a54e25c9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'9c1e81f6-3449-40bb-9a54-ce6c9f33196a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Deko', N'#d87f40', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'5793513a-52cf-4f49-bd0c-cee2c333cff7', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'AMAZON', N'#890453', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'a6d02ad2-72b4-4b29-86e8-cee549702a27', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Zahnarzt', N'#d03f2e', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'e82a293d-9690-4354-8fad-cef8944aabe5', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Baumarkt', N'#54e0a8', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'0ec2e233-70e2-4166-aec4-d002af9c83df', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'TS Riemeier', N'#F86162', NULL, NULL, N'b4ae0c06-8b35-4512-a205-191d1f901498')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'b9769422-6fc0-40b2-8333-d03f92490826', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'KFZ Steuer', N'#7CF1FB', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'68810883-26c6-403c-b1f5-d0d4e50dd83b', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Autoreparatur (Fixkosten)', N'#b8bd92', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'5270f1b7-84f1-4822-9987-d3672b520a96', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'HUK Coburg', N'#95EF4C', NULL, NULL, N'a7fe047d-44d7-4db3-8bd0-6f6494d5fd62')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'22c24aeb-2889-4141-9d7a-d3d6fe09a130', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Computerteile', N'#a740f6', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'129fe3af-cdba-46dc-8ce1-d826d45f6ac5', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'TARA M Rheine', N'#2B2E89', NULL, NULL, N'0df9b509-5a0a-4f82-9668-ee65a54e25c9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'e0eba376-13ae-41a5-a2cb-dc98f9e19ee9', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Sport', N'#123456', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'5db60309-42f3-4dba-a64c-dd8606505f0a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Versicherungen', N'#454545', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'8155b4d9-5f43-4f73-80fe-dd9406c907ca', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Schuhe', N'#5c009d', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'ce735ebb-2268-4363-8d8c-df58916f11ec', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Johanniter', N'#D82C0C', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'b0d37c2a-ff4f-48c7-8332-e1a50c0f14ce', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Galaxus', N'#46aada', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'5fb10da2-82d7-4411-b9fc-e438e3c13b8f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Buena Vista', N'#F4E5F4', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'e47f73b7-6bb8-49b6-9706-e4f0f6004d7a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Zahnzusatzversicherung', N'#4566F8', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'533f98b5-2528-4586-b7a1-e54a9246b006', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Altersvorsorge', N'#E2C742', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'725279bc-e36a-42e6-9831-e56c06784f7c', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Rossmann', N'#2889b2', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2bf074f2-3291-4bdf-8be2-ec11151cfec0', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Bachelorarbeit', N'#834e6e', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'e3c2d8ea-8a1a-4184-a69d-eca70125aabc', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Apotheke', N'#cdf155', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'6eb80b16-a09f-41b1-aa64-ed95f911e8c3', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Geschenke', N'#132ced', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'2b05f0cc-2aab-434e-a9a6-edc6deaab249', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'AMAZON', N'#890453', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'0df9b509-5a0a-4f82-9668-ee65a54e25c9', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Kleidung', N'#b0bd1b', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'cfe87dc5-781c-4299-ba33-eebab483676d', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Schiedsrichterausrüstung', N'#110426', NULL, NULL, N'0df9b509-5a0a-4f82-9668-ee65a54e25c9')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'32d2c4f3-6990-488b-aec5-ef95b72eae8c', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Sky', N'#15aa6f', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'3bbef218-8521-4dc3-a9f8-f39d8da89461', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'Bachelorarbeit', N'#834e6e', NULL, NULL, N'03442cd9-0aba-4a7c-9d89-cb15fae6d5ee')
GO
INSERT [dbo].[Categories] ([Id], [EmailUserId], [Title], [Color], [ParentId], [HierarchyId], [SupercategoryId]) VALUES (N'e4a05d46-7eb5-470c-be47-f7eeb0dc54a3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'Hausratversicherung', N'#8D2079', NULL, NULL, N'2f5acf29-7d38-44f0-8cd0-039fae34c40e')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'dd6ef570-e5b7-4054-ad00-0068f7476b2c', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'46ad5ccb-f1ad-4214-863d-03389166b668', N'Sport Henkel GmbH')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'575a2528-f314-4307-863a-00849684df92', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'050ebbee-75ab-48b7-a645-5faa981b1ab6', N'Flurreinigung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'df077b23-8240-48e6-a1c8-03c51b008938', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b7595d53-f6b0-4a9a-9ea3-3ae7c6facfe4', N'verkehrs be')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'87d72707-c933-46a3-89a4-03eb696d4eaa', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'49867957-8e19-4739-affa-28c93a30359f', N'Studium')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'51bcd0b6-97fb-4004-b6eb-07659c868ede', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'4574e030-705e-4230-810f-b68f649362b7', N'jack + jones')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'fcf5ccc2-6261-4b9c-83d2-0d35412e000d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'050ebbee-75ab-48b7-a645-5faa981b1ab6', N'Flurreinigung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'1f2909bc-6e54-4506-b214-0d5e44e5b712', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e47f73b7-6bb8-49b6-9706-e4f0f6004d7a', N'Zahnzusatzversicherung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5b6e2203-4ab5-4217-b457-0d786369346d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'137f48d9-f006-4fdc-9ec5-02fc1c490ec4', N'o2 DSL')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'799c1e59-1249-4d4b-8590-0e0590e21880', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'2bf074f2-3291-4bdf-8be2-ec11151cfec0', N'copy center brix')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'fb532377-d8e1-43bb-bb16-0e10202838b6', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'c7ca0008-9f91-4568-ade8-1836dec99366', N'TARA M Rheine')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'1cb004be-0746-431c-a202-0e1b8523730a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e82a293d-9690-4354-8fad-cef8944aabe5', N'sonderpreis baumarkt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'c32e12f8-f897-46ed-aeb9-0fc32d9131b9', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'jalapeno')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'a450df81-13f5-444c-a541-127a440ea211', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'85c2a738-e487-4ce8-a401-c46e94234944', N'sumup.hh hfzs')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'8cc8a234-597f-472b-997b-127e6c4078c5', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'4574e030-705e-4230-810f-b68f649362b7', N'j+j')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'9337cd4a-9093-4c3c-97cf-147af07e7bdd', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'96fdc011-68df-4f34-ac1d-0ab9da56d983', N'mobilcom')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'39510897-8e95-4095-bac5-1512ba2b31d2', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'7b89e514-0870-48a5-a2ff-5ce23a16093a', N'europa park')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'878d4cc8-3641-4a8d-8866-154a7b6acd4b', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'878f2d6b-4e0f-414c-84c3-728f61715549', N'gez der')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'550987be-6e4c-4af4-9b48-1a901c1adc92', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'cc77529f-4b19-4b57-9fef-6214ea167838', N'sonderpreis baumarkt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'f6ecc17c-c7b3-4eec-bd8c-1ada65d1f759', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'878f2d6b-4e0f-414c-84c3-728f61715549', N'Stromkosten')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0911b3ec-ff7a-459f-8d0e-1c0dd16fedfe', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e82a293d-9690-4354-8fad-cef8944aabe5', N'toom bm sagt danke')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6e3613d6-0f60-4ec7-b6da-1c80769dee0a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'jet dankt fuer')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'8f28f815-c358-4ba7-88ee-1d2a92f7e56d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'caff0264-acca-45ff-8477-18dab5d6acb6', N'rossmann')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6359b35a-6141-4e0c-9f69-1eec28c89062', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17968dfa-d146-4faf-9d10-30161b04a85a', N'butlers')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'df1f35ec-6df0-419c-b25f-1fc836aa044d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'bfa3d021-d417-4d54-bfc6-b2b7e319aed5', N'sport voswinkel//dortmund')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0b50ae0d-305f-4159-b259-200e464c744b', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'3f7e2576-57fa-471d-a652-2a395a9d6d67', N'Johanniter')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd9b0210e-1f92-4575-b429-2249f3e11e13', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'9976bd0b-13f2-42c7-80fd-2719dff9e5ad', N'apollo optik')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'1a52bac2-d561-43d2-9f10-25eb64d2b9e2', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'backfactory')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5fd6ff1b-cfb2-4a6d-b5ab-260f32cdc1b8', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'd8c476fa-6205-40cd-bdc7-4b53897b5e01', N'DSL')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd727f4d5-0158-4c0d-becd-2a727dac295a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'penny')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6e89c1a5-1ba4-4c86-a60f-2bef6b27b33d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'85c2a738-e487-4ce8-a401-c46e94234944', N'kfz-versicherung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'54baa29f-85a7-4043-8489-2f544e433524', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'7632566e-16a3-4eeb-9fb1-0df14dd3f098', N'sky')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'13ffd817-1ced-493b-9bcf-30a283a9cc9b', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'7ae4edc1-db6c-48e5-9559-91767d5be4cd', N'ADAC')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'23f3e45f-d050-4ec2-b5e2-3104975b6488', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e348fee5-5548-461e-9dcf-c1aef9c42273', N'DSL')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e186f172-4465-41b8-8359-3475fb548751', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'04cba1b4-6c17-4087-a189-0a20af368ab0', N'Apollo')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'fe050f8c-ac9e-4274-a465-37a9eaddd201', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'4590921c-ef62-459b-86b7-1dc59b11b451', N'Spotify')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ead9dcd1-d358-4490-bbe9-37c266555fc1', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'9462e1ed-2b55-44a5-a7c4-c26d66bb06e1', N'IWEAR DIRECT')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'3152200d-bfdc-49f7-a870-3bda68243664', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'elan')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'56335e3f-20c6-422c-a614-3bf927e7b441', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8155b4d9-5f43-4f73-80fe-dd9406c907ca', N'deichmann')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'3bbeeffb-6cae-406c-99c9-3cc87f239ccd', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8edc0ebb-4ebd-42d6-909b-925d8107237e', N'verkehrs be')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'c9f3bb27-e3d3-4fd1-8622-40ee625f3a09', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'oliver guettge')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e842d2d9-8ea5-4e78-bf17-416d0f4e2455', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'4590921c-ef62-459b-86b7-1dc59b11b451', N'Spotify')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd8681b72-6d8e-4e42-ba9b-4372cea66aca', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'subway')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7f1d6218-0071-425f-adbb-437e17b1896f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'14925695-e516-4213-8b2c-1c15211ffaef', N'Telefonica')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0267e600-031e-40f0-8e7e-45dc87363d43', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'5793513a-52cf-4f49-bd0c-cee2c333cff7', N'AMAZON')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'62e0adfc-9275-4b81-be0b-45ff737aa23e', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'westfalen ts')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ccb7562e-a8d2-43cb-a5a8-46e97a1cca0d', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'0df9b509-5a0a-4f82-9668-ee65a54e25c9', N'j+j')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'f46078ea-0c59-4be1-98fd-49575cb8b5d7', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'78d81ed8-e751-41d2-bf11-a8bd9887748c', N'KFZ Steuer')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'633f0d66-754d-400e-a454-49ce1010d357', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'9c1e81f6-3449-40bb-9a54-ce6c9f33196a', N'nanu nana')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'62cff5d3-1b1e-4f6f-91ce-4b15636c99ce', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e4a05d46-7eb5-470c-be47-f7eeb0dc54a3', N'Hausratversicherung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd30ca9ca-cddd-4715-b4d8-4bf49e097d6a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'le clou')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ff813ff9-2372-4b18-ab10-4ce434737dac', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'44d2f8cc-1a68-4ebf-a2f0-c8cac09baa04', N'galaxus')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'8e803a32-8f2c-4c72-a259-4e9b8f145a2d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'909d2b19-c931-4ac8-8b3f-30920c2a597f', N'discord')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'00d071ed-649d-4bb5-aac1-4f66f7da3dc3', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'6773ca70-c1be-47ca-8ce4-3d9a44b08613', N'ikea')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'14c18178-86e1-4705-b2e6-519458cf2eb5', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'49867957-8e19-4739-affa-28c93a30359f', N'Fachhochschule Suedwestfalen')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7ec53a4e-456d-4ea5-afc9-532386f74650', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'spar dankt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5f5d01cc-64aa-4f53-88b3-53387c34e5cc', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'83ec10ad-bf87-4835-aa84-33a0a10a44b5', N'ga nr => geldautomat')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'2b9f257e-d6a6-4412-8c91-53cad271e4d7', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'd94def0b-10c5-4bee-9a17-cb4a2d17ca37', N'Apollo')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'df8a32a4-fcdc-4a4d-92c8-57f5dd1b0482', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'f418af91-5b22-423c-b6db-3eef4be69604', N'o2 DSL')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ff3191bb-3c81-4269-8e92-5880b8ee5474', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'96fdc011-68df-4f34-ac1d-0ab9da56d983', N'mobilcom')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'3a506cf6-5252-4571-829b-59e086726880', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'7295c2f4-8678-4196-af71-66d5fe0aac89', N'thalia')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd26ec625-d05e-44a4-8351-59e6e6d30a77', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'bc3dbc83-e342-42f9-aa06-b6879bad5dbe', N'apotheke')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7661d730-ec03-49d2-9217-5e44290160b4', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'elan')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6e0be991-58bd-4c79-bb8e-5ebc20527847', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'mcdonalds')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'2ae7bedd-18eb-40a9-ba2b-611f711b875d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'road house')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'dacd49ad-6af1-4345-ad22-634b260da7b0', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'9976bd0b-13f2-42c7-80fd-2719dff9e5ad', N'apollo optik')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'9db8158b-71a5-489e-bd85-64f0f00f939b', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'0df9b509-5a0a-4f82-9668-ee65a54e25c9', N'jack + jones')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'282c738f-8da3-4fc0-8d7b-65dee3cc9844', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'878f2d6b-4e0f-414c-84c3-728f61715549', N'gez der')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'f90b8aed-5fee-403b-9734-67c885a0f4d2', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'fc58248c-ecb1-41fa-9fe0-9f5cdcc95b5a', N'ADAC')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'3a9eaba5-c717-4ac0-af47-6826da80e87e', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'3c061258-6bf8-414d-85e9-0bb15c74fa0f', N'deichmann')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5fd9e560-a8c2-410e-8047-695b42e6e9c3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8edc0ebb-4ebd-42d6-909b-925d8107237e', N'DB Vertrieb GmbH')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'eb06d8a3-35e2-4f14-9cc9-6a5f03c11d2b', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'a3a3342d-5764-4410-b896-c1224760e999', N'Basler Berufs')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6e1f8aa4-22c7-453d-b362-6c4c3ef46f57', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'Lebensmittel')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5020e835-8690-48a3-80f0-6d494861e39a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b7595d53-f6b0-4a9a-9ea3-3ae7c6facfe4', N'DB Vertrieb GmbH')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'f8ed0594-6312-44c0-b313-6d5feb4c46b9', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'bulun gastro gmbh')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'04d0df4b-e716-4774-aeb1-6d67031e0339', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'shell')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0f5e160d-5de3-4a06-9e73-711a85a59e78', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'd6638a19-6760-43c0-892f-95c691a9c37b', N'Buena Vista')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5d4d6549-d095-4b39-972a-73355dc69b14', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b9769422-6fc0-40b2-8333-d03f92490826', N'KFZ Steuer')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'54eddfa1-e5c3-415c-8dc6-754c581ebe20', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'peter pane')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0c525366-14a9-46e8-9cb6-763d37607bca', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'total')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e626f4f2-e426-4cb4-b04d-7747068d3aab', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'12552fa5-9d03-40e4-9043-53339b385c6d', N'sky')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6970f8e3-2d73-4c45-9e79-7940b453cc13', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'la valle')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd4770012-3875-4f92-8679-7a05c859fdeb', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'd6638a19-6760-43c0-892f-95c691a9c37b', N'Buena Vista')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7d55064b-630c-45f1-9526-7a13ea0ed984', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'a72e6788-188a-4a6f-b5bd-6e618753aeb3', N'ebay')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'9be41f2c-fe9d-4420-8b0b-7a9bacf9b255', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'37e82bdf-9f53-4306-af42-1a3b6efc7056', N'microsoft')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'34fedc9e-9fd4-4f0e-8390-7b7ba75d8fb0', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'3c9af8fd-a6c8-4893-95e2-ce13e6aac769', N'decathlon deutschland se')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'72cc14b9-7b6e-49a3-964a-7d22aa2b7233', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'878f2d6b-4e0f-414c-84c3-728f61715549', N'miete')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ec8dc149-3f2f-4097-af31-7dbd51b00178', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'2293ec2c-c035-4bbd-a0ac-6194abd770c3', N'zahnaerzte')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'065934ab-1ac6-4bdb-9353-7e2b0a53e07d', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'afe83043-8b6d-45bc-911b-5b8c778fd7b9', N'media markt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'a360e273-52f7-4634-b049-7e45cfa4135a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'shell')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'24f855bc-cce3-4d29-9a11-7e48098f5a23', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'3c9af8fd-a6c8-4893-95e2-ce13e6aac769', N'sport voswinkel//dortmund')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'05fadf03-4e20-4348-b887-808a8891d401', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'14925695-e516-4213-8b2c-1c15211ffaef', N'Telefonica')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7570c31b-bb77-4ee2-9eb4-8187a322d621', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'0d8c8b77-f36d-48fa-bd2b-4bddec705b6a', N'HUK Coburg')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'c8f57648-5b7d-4df9-bdae-81a0f1d3e7bc', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'jalapeno')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6653cc20-1b69-4d0a-97d9-823024c8350a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'backfactory')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'c5d3da95-2a00-4ebe-8f20-83da28c2703a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'jet dankt fuer')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'9e61e482-eaaa-45ed-ac13-85953cddb438', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'total')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0935f7e1-43e6-468a-98d0-862e884d925e', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'jibi verbrauchermarkt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ab95cf3a-08e2-4ec6-9bdb-86b67d451a0f', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'2b05f0cc-2aab-434e-a9a6-edc6deaab249', N'AMAZON')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'14f0c5f6-fce3-4103-b95e-86fac42b3b98', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'agip')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'53d0b151-2ab4-4405-b9c5-898cb0b8118b', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'afe83043-8b6d-45bc-911b-5b8c778fd7b9', N'media markt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'fb2f2994-6129-4c11-bbbe-89c8f372cbbd', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'2293ec2c-c035-4bbd-a0ac-6194abd770c3', N'zahnaerzte')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'64e5ef54-d622-4d10-9295-89f9a434d1c3', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'14eca051-7235-4f3a-a4ed-8a203107f5e7', N'Hurricane')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'98082816-2eb2-4e58-9022-8c7253d0296a', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'bfa3d021-d417-4d54-bfc6-b2b7e319aed5', N'decathlon deutschland se')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5b8dd087-91fa-4ab0-812c-8e3853f9fbf9', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'westfalen ts')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'2e31781a-c793-45b2-a747-8ef5553c2cfc', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'agip')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5e05c609-04b7-4ccb-a24b-8fc46daf0e81', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'533f98b5-2528-4586-b7a1-e54a9246b006', N'Altersvorsorge')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'13699fc3-c4a1-45cd-9212-90bb3df148e2', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'edeka')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'472c5607-f4db-4538-a2b5-92896e69484c', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b7595d53-f6b0-4a9a-9ea3-3ae7c6facfe4', N'dbvertriebg')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'1bd29e90-24f7-468b-a745-94f368071bfc', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'c7ca0008-9f91-4568-ade8-1836dec99366', N'TARA M Rheine')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6d76e2cd-9a47-451c-9d2c-95e4f0fe616e', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'road house')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'af1b38e4-dc7a-4c10-8ee8-9b351af4a6a7', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'subway')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'2b2bc63c-50df-48cd-b514-9b614a23efe1', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'2460cef6-d30e-40f6-b13b-2ace21cd16e6', N'TS Riemeier')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'4dca8f1b-54a8-486a-a1a6-9cbf960fb7b3', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'46ad5ccb-f1ad-4214-863d-03389166b668', N'Sport Henkel GmbH')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'c1eecd0c-471b-4dbd-8332-9d9a0378cc15', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'gastronomie')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ddf15859-7b5a-485e-b661-9ed3c059950f', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'shell')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0f9acb74-9e05-449a-a9a5-a486af7e3130', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'spar dankt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'b1730cb4-7677-40c2-8b71-a770dc0f6979', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'6c38f4f9-35c7-42fe-8a3a-66ae3919fc50', N'Fachhochschule Suedwestfalen')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7598a395-f2b2-4efe-af7f-a77add47f2f9', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'f55aee92-d4b2-4fa7-8181-9bc1d5b1a069', N'cyberport')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'15005486-ec05-46d6-a695-a8cb2774d687', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8edc0ebb-4ebd-42d6-909b-925d8107237e', N'dbvertriebg')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ae46b54b-6af9-45f5-8742-ab05b5d1c392', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'0b66f643-51db-4768-adac-60fff93fcd66', N'Studium')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e9aa2abb-3bf9-4f79-a08b-ab46334fa7a4', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'83ec10ad-bf87-4835-aa84-33a0a10a44b5', N'ga nr => geldautomat')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd660be96-b65d-41dd-9f4f-ab7af1b38853', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'11e331ad-a2a6-4e33-84dc-0502e31b82cb', N'Basler Berufs')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'68a6c4d5-1ded-4875-a5a5-abf2fafa27cf', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'ec98d37a-574c-4bb0-a372-af32bc1cd3d8', N'IWEAR DIRECT')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'dd477058-ca6d-4dbb-9856-ae0825a856f3', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'2460cef6-d30e-40f6-b13b-2ace21cd16e6', N'TS Riemeier')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'c401fd10-98d0-4378-ad03-aed46d1659c4', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'4d46cd4b-221d-45e9-afbf-0b1463e29e07', N'Altersvorsorge')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'bda0cef3-1de1-4046-8821-b0aaf4590270', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'0d8c8b77-f36d-48fa-bd2b-4bddec705b6a', N'HUK Coburg')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5f0276b9-12d2-4a51-bf3b-b23d862a5f26', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'14eca051-7235-4f3a-a4ed-8a203107f5e7', N'Hurricane')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'aec96668-7c7f-4f0d-a2a3-b3d3ca253dbd', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'gastronomie')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7bc272fe-6b4a-4ffb-876b-b6707cbcf1f0', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'878f2d6b-4e0f-414c-84c3-728f61715549', N'miete')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e2668722-9d39-47a7-a41e-b6f13557423e', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'la valle')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'1fcc3fcc-a15e-4da1-9467-b82114b26495', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'22c24aeb-2889-4141-9d7a-d3d6fe09a130', N'cyberport')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ef690469-93c0-473f-bc98-b9367ce8bd51', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'jibi verbrauchermarkt')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e2db6f15-9d0a-4d21-b420-b9b511033e35', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'penny')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'22000c45-1cff-4ba6-b435-bbeca729cc1c', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'878f2d6b-4e0f-414c-84c3-728f61715549', N'Stromkosten')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'd2619286-2e59-4ec6-a1aa-bce50b5c402a', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'd253f83e-12c3-4130-ba50-4f644769cf57', N'microsoft')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'7ffc321f-3caa-4034-97a3-bdf200fd1d81', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'2bf074f2-3291-4bdf-8be2-ec11151cfec0', N'copy center brix')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'b825010f-e9b6-4444-8949-c09aace3e4a5', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'85c2a738-e487-4ce8-a401-c46e94234944', N'sumup.hh hfzs')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'3d544ad2-beea-4282-8010-c1128d12f076', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'85c2a738-e487-4ce8-a401-c46e94234944', N'kfz-versicherung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'2d3105ab-8a5b-4d8a-b83e-c331929dc087', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'b0a0c646-5239-4e30-b1b3-bd0d4f290eeb', N'ikea')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'141c2dd3-0d15-41b1-9d6e-c35d07a07d62', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'44d2f8cc-1a68-4ebf-a2f0-c8cac09baa04', N'galaxus')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'38519fd7-3a1e-40e3-b335-c5034f808dd3', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17968dfa-d146-4faf-9d10-30161b04a85a', N'nanu nana')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'b893b4c9-2cab-4554-ac63-c8da86cbb7a5', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b4ae0c06-8b35-4512-a205-191d1f901498', N'shell')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'bc132ab2-06e6-4973-b89c-c965a211004f', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'b6b3bb7e-7c28-4c16-97ea-022d0a7965eb', N'HH-Kfz')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'bd8b83d9-34bb-42f0-88ba-c9c05fc0cfef', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'cc77529f-4b19-4b57-9fef-6214ea167838', N'toom bm sagt danke')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'efa5af0d-f411-4187-b30d-cdeecbd4f949', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'0d670d24-a38e-4885-b11a-700641effa52', N'TV Lemgo Volleyball')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'117cac51-f00b-44ad-b955-ceae2d8fec6f', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'9c1e81f6-3449-40bb-9a54-ce6c9f33196a', N'stoff haus')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'012d9fdd-e354-47c1-b549-d0ba8bd0a223', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'oliver guettge')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'fbf6e8df-3ea9-4bf2-b8d7-d185f78295ae', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'aldi')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'66c63c01-ecd9-418f-92dd-d5f47511e549', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'edeka')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ba730035-c239-4da8-b650-d605c52e1df4', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'le clou')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'bef26dde-f856-4e82-9a27-d6b807a04cea', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'ce735ebb-2268-4363-8d8c-df58916f11ec', N'Johanniter')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e00be8e3-36f2-4214-8717-d74cf1c57840', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'2d47e4ce-5311-4718-a2b1-8297a9c717a9', N'HH-Kfz')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'a295c474-039d-42ba-a18a-db9b5bfd1de1', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'marktkauf')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ff316df8-0c92-4e80-a4a9-de49a0018984', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'8a472fd8-b98b-4f16-a31a-bc523f1bfa02', N'bulun gastro gmbh')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'71d37bf4-b7bf-42f2-b414-deee5daae956', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'2a00a232-bc03-459f-abe3-9aaa6ea7665d', N'Hausratversicherung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'ac9a2c12-0411-4ce6-baed-e109dc565660', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'peter pane')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'5d28a071-0c45-4b5d-828d-e16133ad3558', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'd6d814d3-2872-4a75-9c2a-7796cc2c4356', N'thalia')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'f33b994f-d96f-4c15-9ca8-e3677ced18cc', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'Lebensmittel')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'fea43fae-6dfe-4943-9d76-e4d60927b200', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'83075c2b-d616-4246-accb-cb1a9a0d9a4d', N'discord')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'561c5a9a-c927-47d9-ac23-e54b2380aa27', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'9c1e81f6-3449-40bb-9a54-ce6c9f33196a', N'gries deco compamny')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'f8e8ca0e-7994-4d96-a5cc-e7eb08c429da', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'0511757d-0656-4c0b-9e94-919509cdc845', N'frisoer')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'1ef83b3b-19b2-43d7-b19d-ea984a076dea', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17968dfa-d146-4faf-9d10-30161b04a85a', N'stoff haus')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0dcc0db8-40c6-4127-aa6e-ed3b8e7d01b8', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17968dfa-d146-4faf-9d10-30161b04a85a', N'gries deco compamny')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'3999edb7-de06-445a-abf5-edec9b4b2dee', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'ffe64368-3154-4798-bbb5-22eb6799e6db', N'frisoer')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'058f1fc0-122a-4644-b7d5-eef0e3ed537e', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'a72e6788-188a-4a6f-b5bd-6e618753aeb3', N'ebay')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'8afbd051-0cd7-4fb1-b44d-ef986d27deda', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'7b89e514-0870-48a5-a2ff-5ce23a16093a', N'europa park')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'6e1960b7-0cf0-408f-87d0-efac26b8e510', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e07eab4f-b8dc-4d4e-96dd-73084c88a4ef', N'aldi')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'061e2357-37f4-4efc-822b-f117497a9efa', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'caff0264-acca-45ff-8477-18dab5d6acb6', N'rossmann')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'b604d352-89cf-4cdd-902a-f275d6f1e870', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'81e762cb-7d21-4058-b526-5483c474db4e', N'mcdonalds')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'147722c9-c790-4eff-a98d-f5f957a9d5c7', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'7b25ab72-40a0-4f09-b171-8b715a49572d', N'Zahnzusatzversicherung')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'0c21772f-1ece-4bad-826f-f7b9a8df32c1', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'9c1e81f6-3449-40bb-9a54-ce6c9f33196a', N'butlers')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'e65128f4-46c9-4724-852a-fa3fb72cb040', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'17eb9b7f-ec56-4c4d-aedb-1656b182d7fa', N'marktkauf')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'89041882-e1f6-4305-a0f0-fc085c5b0d1f', N'8dd8a19f-1f5e-4c58-b22d-b637068a2db1', N'e3c2d8ea-8a1a-4184-a69d-eca70125aabc', N'apotheke')
GO
INSERT [dbo].[CategorySearchTerms] ([Id], [EmailUserId], [CategoryId], [Term]) VALUES (N'2746bb1a-98d9-49c6-a3d4-fdabb6536567', N'9dd8a19f-1f5e-4c58-b22d-b637068a2db2', N'9936e373-2ce5-4c43-a3e1-4942f62b5c05', N'TV Lemgo Volleyball')
GO
INSERT [dbo].[AdminUserGroupPermissions] ([AdminUserGroupId], [Benutzerverwaltung], [BerichteBearbeiten], [BerichteLesen], [BetriebBearbeiten], [BetriebLesen], [DokumenteBearbeiten], [DokumenteLesen], [GebietskoerperschaftBearbeiten], [GebietskoerperschaftLesen], [GrundDatenBearbeiten], [GrundDatenLesen], [HilfetextBearbeiten], [HilfetextLesen], [ImportExportSchemataBearbeiten], [ImportExportSchemataLesen], [LoginAlsBetrieb], [LoginAlsGebietskoerperschaft], [LoginAlsSchule], [LoginAlsSchulkind], [NachrichtenBearbeiten], [NachrichtenLesen], [NewsletterBearbeiten], [NewsletterLesen], [SchuleBearbeiten], [SchuleLesen], [SchulkindBearbeiten], [SchulkindLesen], [SchulsystemBearbeiten], [SchulsystemLesen], [StatistikenBearbeiten], [StatistikenLesen]) VALUES (N'90671da2-a763-409b-92c2-5a2005cdbac8', CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)), CAST(1 AS Numeric(1, 0)))
GO
