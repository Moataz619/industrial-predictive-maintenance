# Industrial Predictive Maintenance ML Pipeline

An end-to-end Machine Learning and Data Engineering project predicting equipment failure using synthetic manufacturing telemetry data (AI4I 2020 Dataset).

## 📌 Business Case
Unplanned downtime in manufacturing leads to substantial operational costs. This project builds a predictive maintenance system to identify machine failures before they occur, allowing engineering teams to schedule targeted maintenance.

## 🛠 Tech Stack
* **Language & Analysis:** Python 3.14 (Pandas, NumPy, Scikit-Learn)
* **Database:** SQLite & SQL for domain KPI aggregation
* **Visualization:** Matplotlib, Seaborn
* **Version Control:** Git, GitHub Desktop

## 💡 Feature Engineering (Domain Specific)
Leveraging background knowledge in electrical and mechanical engineering, three key engineered features were introduced:
* **Temperature Difference:** `process_temperature` - `air_temperature`
* **Mechanical Power (W):** Derived from `torque` and `rotational_speed`
* **Overstrain Index:** Product of `tool_wear` and `torque`

## 📊 Model Performance & Optimization
* **Baseline:** Random Forest Classifier
* **Hyperparameter Tuning:** `GridSearchCV` optimizing for F1-score and addressing class imbalance via `class_weight='balanced'`.

## 🚀 How to Run
1. Clone repository: `git clone https://github.com/<DEIN-USER>/industrial-predictive-maintenance.git`
2. Install dependencies: `pip install -r requirements.txt`
3. Execute SQLite pipeline: `python src/build_db.py`
4. Run Notebooks in `notebooks/` directory.
