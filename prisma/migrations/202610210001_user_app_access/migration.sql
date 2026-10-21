-- Permisos de acceso a los sistemas JUBILA y Retenciones.
-- Los usuarios existentes conservan acceso a JUBILA; Retenciones queda
-- deshabilitado hasta que un administrador lo habilite para cada usuario.

ALTER TABLE "USUARIO"
  ADD COLUMN IF NOT EXISTS "JUBILA" BOOLEAN NOT NULL DEFAULT TRUE,
  ADD COLUMN IF NOT EXISTS "RETENCIONES" BOOLEAN NOT NULL DEFAULT FALSE;
