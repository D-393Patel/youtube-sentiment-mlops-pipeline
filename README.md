# 🎯 YouTube Comment Sentiment Analysis – End-to-End MLOps Pipeline

A production-ready MLOps pipeline for sentiment analysis of YouTube comments, built with **Python, Docker, and AWS**.

This project demonstrates the complete machine learning lifecycle — from data ingestion and feature engineering to model training, containerized deployment, and monitoring — following industry-standard, production-grade MLOps practices.

---

## 🚀 Project Overview

This system automates the full ML workflow:

* Data ingestion from YouTube comments
* Data validation and preprocessing
* Feature engineering
* Model training and evaluation
* Experiment tracking and model versioning
* Dockerized deployment
* Cloud hosting on AWS
* Monitoring and logging

The architecture emphasizes scalability, reproducibility, and maintainability.

---

## 🧠 ML Lifecycle Covered

1. **Data Ingestion**
2. **Data Validation**
3. **Feature Engineering**
4. **Model Training**
5. **Model Evaluation**
6. **Experiment Tracking**
7. **Model Versioning**
8. **Containerized Deployment**
9. **Monitoring & Logging**

---

## 🛠 Tech Stack

### 🐍 Machine Learning

* Python
* Scikit-learn / XGBoost
* Pandas & NumPy
* NLP preprocessing (TF-IDF / tokenization)

### ⚙ MLOps

* MLflow (experiment tracking & model registry)
* DVC (Data Version Control)
* Modular pipeline architecture

### 🐳 Deployment

* Docker
* FastAPI / Flask (REST API)
* Gunicorn (production server)

### ☁ Cloud

* AWS EC2
* AWS S3 (artifact storage)
* IAM roles for secure access

---

## 🏗 System Architecture

```
YouTube API
     ↓
Data Ingestion Pipeline
     ↓
Preprocessing & Feature Engineering
     ↓
Model Training & Evaluation
     ↓
MLflow Tracking & Model Registry
     ↓
Dockerized Inference API
     ↓
AWS Deployment (EC2 + S3)
     ↓
Monitoring & Logging
```

---

## 📂 Project Structure

```
├── data/
├── notebooks/
├── src/
│   ├── ingestion.py
│   ├── preprocessing.py
│   ├── train.py
│   ├── evaluate.py
│   ├── predict.py
├── mlruns/
├── Dockerfile
├── app.py
├── requirements.txt
└── dvc.yaml
```

---

## 🔄 Pipeline Workflow

### 1️⃣ Data Ingestion

* Collect YouTube comments via API
* Store raw data in structured format
* Version datasets using DVC

### 2️⃣ Data Validation

* Null value handling
* Schema validation
* Data integrity checks

### 3️⃣ Feature Engineering

* Text cleaning
* Stopword removal
* Tokenization
* TF-IDF vectorization

### 4️⃣ Model Training

* Train classification model
* Hyperparameter tuning
* Cross-validation
* Performance logging

### 5️⃣ Model Evaluation

* Accuracy
* Precision / Recall
* F1-score
* Confusion matrix

---

## 📊 Experiment Tracking with MLflow

* Log parameters and metrics
* Compare model runs
* Store model artifacts
* Register production-ready models

---

## 🐳 Docker Deployment

### Build Docker Image

```bash
docker build -t youtube-sentiment-mlops .
```

### Run Container

```bash
docker run -p 8000:8000 youtube-sentiment-mlops
```

---

## 🌐 REST API Example

### Request

```
POST /predict
{
  "comment": "This video is amazing!"
}
```

### Response

```
{
  "sentiment": "positive",
  "confidence": 0.94
}
```

---

## ☁ AWS Deployment

* Deploy Docker container to EC2
* Store model artifacts in S3
* Use IAM roles for secure access
* Configure environment-based secrets
* Ready for load balancer integration

---

## 📈 Monitoring & Observability

* Request logging
* Error tracking
* Inference latency measurement
* Extendable model drift detection

---

## 🔐 Production-Grade Practices

* Modular code structure
* Separation of concerns
* Environment variable configuration
* Data & model versioning
* Containerized reproducibility
* Secure API design
* Scalable deployment pattern

---

## 🎯 Use Cases

* Social media sentiment analysis
* Brand reputation monitoring
* YouTube channel analytics
* Market research insights
* Production-ready MLOps demonstration

---

## 🚀 Future Improvements

* Automated retraining pipeline
* CI/CD integration
* Kubernetes-based scaling
* Real-time streaming ingestion
* Automated drift detection

---

## 👩‍💻 Author

**Deepa Patel**
Machine Learning & Backend Systems
MLOps | Scalable ML Deployment | Cloud Engineering

---

## 📄 License

MIT License
