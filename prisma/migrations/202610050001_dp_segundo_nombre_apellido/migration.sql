-- Segunda parte del apellido y del nombre del agente.
-- La base ya tenía el nombre y el apellido separados; se agregan 2 columnas
-- nuevas (opcionales) para completar los 4 datos:
--   APELLIDO_AGENTE | SEGUNDO_APELLIDO_AGENTE | NOMBRE_AGENTE | SEGUNDO_NOMBRE_AGENTE
-- El nombre completo se compone en la app como
--   APELLIDO [2º APELLIDO] NOMBRE [2º NOMBRE]
--
-- Aplicar manualmente contra la base Supabase (P3005: la base ya está gestionada):
--   psql "$DATABASE_URL" -f migration.sql

ALTER TABLE "DATOS_PERSONALES_AGENTE_JUBILA"
  ADD COLUMN IF NOT EXISTS "SEGUNDO_APELLIDO_AGENTE" VARCHAR(255),
  ADD COLUMN IF NOT EXISTS "SEGUNDO_NOMBRE_AGENTE" VARCHAR(255);