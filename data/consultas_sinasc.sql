
-- ============================================
-- CONSULTAS SINASC
-- Banco gerado em: 2026-03-30 18:20:25.790070
-- Total de registros: 0
-- ============================================

-- 1. Total de registros por ano
SELECT ano, COUNT(*) as total, 
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM nascimentos), 2) as percentual
FROM nascimentos 
WHERE ano IS NOT NULL
GROUP BY ano 
ORDER BY ano;

-- 2. Comparação entre anos (2022 vs 2023)
SELECT 
    ano,
    COUNT(*) as total_nascimentos,
    AVG(idade_mae) as idade_media,
    SUM(CASE WHEN tipo_parto = 'Cesáreo' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) as taxa_cesarea,
    AVG(quantidade_filhos_vivos) as media_filhos
FROM nascimentos
WHERE ano IN (2022, 2023) AND idade_mae IS NOT NULL
GROUP BY ano;

-- 3. Top 10 UFs por ano
SELECT ano, sigla_uf, COUNT(*) as total
FROM nascimentos
WHERE sigla_uf IS NOT NULL AND ano IN (2022, 2023)
GROUP BY ano, sigla_uf
ORDER BY ano, total DESC;

-- 4. Taxa de cesárea por UF e ano
SELECT 
    ano,
    sigla_uf,
    COUNT(*) as total,
    SUM(CASE WHEN tipo_parto = 'Cesáreo' THEN 1 ELSE 0 END) as cesareos,
    ROUND(100.0 * SUM(CASE WHEN tipo_parto = 'Cesáreo' THEN 1 ELSE 0 END) / COUNT(*), 2) as taxa_cesarea
FROM nascimentos
WHERE tipo_parto != 'Ignorado' AND ano IN (2022, 2023)
GROUP BY ano, sigla_uf
ORDER BY ano, taxa_cesarea DESC;

-- 5. Perfil das mães por ano
SELECT 
    ano,
    faixa_etaria,
    COUNT(*) as total,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY ano), 2) as percentual_ano
FROM nascimentos
WHERE faixa_etaria IS NOT NULL AND ano IN (2022, 2023)
GROUP BY ano, faixa_etaria
ORDER BY ano, faixa_etaria;
