-- Cria o usuário de replicação
CREATE ROLE replicator WITH REPLICATION LOGIN PASSWORD 'repl_password';

-- Cria slots de replicação para cada réplica
SELECT pg_create_physical_replication_slot('replica1_slot');
SELECT pg_create_physical_replication_slot('replica2_slot');