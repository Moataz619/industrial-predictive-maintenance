import sqlite3
import pandas as pd

# Daten laden und in SQLite speichern
df = pd.read_csv('../data/processed/cleaned_data.csv')
conn = sqlite3.connect('../data/processed/manufacturing.db')
df.to_sql('machines', conn, if_exists='replace', index=False)
conn.close()

print("✅ SQLite-Datenbank erfolgreich erstellt: data/processed/manufacturing.db")