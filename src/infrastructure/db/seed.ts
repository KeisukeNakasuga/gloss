import { db } from "./client";
import { sources } from "./schema";

const sourceNames = ["kindle", "readwise"];

for (const sourceName of sourceNames) {
  const now = new Date().toISOString();
  await db
    .insert(sources)
    .values({ sourceName, createdAt: now, updatedAt: now })
    .onConflictDoNothing();
}
