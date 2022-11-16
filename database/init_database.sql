CREATE SCHEMA IF NOT EXISTS uniquanda AUTHORIZATION uniquanda;
SET search_path = uniquanda;
BEGIN;
      CREATE TEXT SEARCH CONFIGURATION uniquanda.polish ( COPY = pg_catalog.english );

      CREATE TEXT SEARCH DICTIONARY uniquanda.polish_ispell (
        TEMPLATE = ispell,
        DictFile = polish,
        AffFile = polish,
        StopWords = polish
      );

      ALTER TEXT SEARCH CONFIGURATION uniquanda.polish
        ALTER MAPPING FOR asciiword, asciihword, hword_asciipart, word, hword, hword_part
        WITH polish_ispell;
COMMIT;