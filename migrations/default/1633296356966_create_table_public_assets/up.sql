CREATE TABLE "public"."assets" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" varchar NOT NULL, "type" varchar NOT NULL, "employee_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("employee_id") REFERENCES "public"."employee"("id") ON UPDATE restrict ON DELETE restrict, UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
