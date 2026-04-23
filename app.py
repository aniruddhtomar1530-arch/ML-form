from flask import Flask, render_template, request
import numpy as np
import joblib

app = Flask(__name__, template_folder='.')

# Load model
model = joblib.load("breast_cancer_rf.joblib")

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict', methods=['POST'])
def predict():
    try:
        # Get input values
        features = [float(x) for x in request.form.values()]
        final_features = np.array(features).reshape(1, -1)

        prediction = model.predict(final_features)

        result = "Malignant (Cancer)" if prediction[0] == 0 else "Benign (No Cancer)"

        return render_template('index.html', prediction_text=f"Result: {result}")

    except Exception as e:
        return str(e)

if __name__ == "__main__":
    app.run(debug=True)
