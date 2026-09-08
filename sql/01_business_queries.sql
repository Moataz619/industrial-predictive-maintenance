-- 1. Gesamtzahl der Maschinen und allgemeine Ausfallrate
SELECT 
    COUNT(*) AS total_machines,
    SUM(machine_failure) AS total_failures,
    ROUND(AVG(machine_failure) * 100, 2) AS failure_rate_pct
FROM machines;

-- 2. Ausfallrate nach Produktvariante (L, M, H)
SELECT 
    type,
    COUNT(*) AS count,
    SUM(machine_failure) AS failures,
    ROUND(AVG(machine_failure) * 100, 2) AS failure_rate_pct
FROM machines
GROUP BY type
ORDER BY failure_rate_pct DESC;

-- 3. Top-Fehlerursachen analysieren
SELECT 
    SUM(twf) AS tool_wear_failures,
    SUM(hdf) AS heat_dissipation_failures,
    SUM(pwf) AS power_failures,
    SUM(osf) AS overstrain_failures,
    SUM(rnf) AS random_failures
FROM machines;