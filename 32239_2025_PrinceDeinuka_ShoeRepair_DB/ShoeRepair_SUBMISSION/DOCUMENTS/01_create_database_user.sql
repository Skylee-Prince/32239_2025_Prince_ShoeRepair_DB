/* ============================================================
   DPR400210 - Database Programming Capstone Project
   Project: Shoe Repair Management System
   Student:  32239_2025_Prince
   Database/User: 32239_2025_PRINCE_DB
   File: 01_create_database_user.sql
   Purpose: Create the Oracle user (schema) and grant privileges
   ============================================================ */

-- Run this script as SYSDBA (SYSTEM / SYS)

-- 1. Create the user following the naming convention
CREATE USER "32239_2025_PRINCE_DB"
    IDENTIFIED BY "Prince#2026Shoe"
    DEFAULT TABLESPACE users
    TEMPORARY TABLESPACE temp
    QUOTA UNLIMITED ON users;

-- 2. Grant privileges needed for the capstone project
GRANT CREATE SESSION TO "32239_2025_PRINCE_DB";
GRANT CREATE TABLE TO "32239_2025_PRINCE_DB";
GRANT CREATE VIEW TO "32239_2025_PRINCE_DB";
GRANT CREATE SEQUENCE TO "32239_2025_PRINCE_DB";
GRANT CREATE PROCEDURE TO "32239_2025_PRINCE_DB";
GRANT CREATE TRIGGER TO "32239_2025_PRINCE_DB";
GRANT CREATE TYPE TO "32239_2025_PRINCE_DB";
GRANT CREATE SYNONYM TO "32239_2025_PRINCE_DB";

-- 3. (Optional) Increase session privileges for debugging PL/SQL during development
GRANT DEBUG CONNECT SESSION TO "32239_2025_PRINCE_DB";

-- 4. Connect as the new user before running 02_create_tables.sql
-- CONNECT 32239_2025_PRINCE_DB/Prince#2026Shoe@ORCL

COMMIT;
