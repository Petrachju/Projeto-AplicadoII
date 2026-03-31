
-- ============================================
-- CONSULTAS SINASC
-- Total de registros: 3,546,910
-- ============================================

-- 1. Total por ano
SELECT ano, COUNT(*) as total 
FROM nascimentos 
WHERE ano IS NOT NULL 
GROUP BY ano;

-- 2. Tipo de parto por ano
SELECT ano, tipo_parto, COUNT(*) as total
FROM nascimentos
WHERE tipo_parto IS NOT NULL
GROUP BY ano, tipo_parto
ORDER BY ano, tipo_parto;

-- 3. Taxa de cesárea por ano
SELECT 
    ano,
    COUNT(*) as total,
    SUM(CASE WHEN tipo_parto = 'Cesáreo' THEN 1 ELSE 0 END) as cesareos,
    ROUND(100.0 * SUM(CASE WHEN tipo_parto = 'Cesáreo' THEN 1 ELSE 0 END) / COUNT(*), 2) as taxa_cesarea
FROM nascimentos
WHERE tipo_parto IS NOT NULL AND ano IS NOT NULL
GROUP BY ano;

-- 4. Idade média por ano
SELECT ano, AVG(idade_mae) as idade_media
FROM nascimentos
WHERE idade_mae IS NOT NULL
GROUP BY ano;

-- 5. Distribuição por UF
SELECT uf, COUNT(*) as total
FROM nascimentos
WHERE uf IS NOT NULL
GROUP BY uf
ORDER BY total DESC
LIMIT 10;
