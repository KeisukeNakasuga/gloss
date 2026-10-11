DROP INDEX IF EXISTS "archive_source_id_external_id_unique";--> statement-breakpoint
DROP INDEX IF EXISTS "sources_source_name_unique";--> statement-breakpoint
ALTER TABLE `archive` ALTER COLUMN "external_id" TO "external_id" text NOT NULL;--> statement-breakpoint
CREATE UNIQUE INDEX `archive_source_id_external_id_unique` ON `archive` (`source_id`,`external_id`);--> statement-breakpoint
CREATE UNIQUE INDEX `sources_source_name_unique` ON `sources` (`source_name`);