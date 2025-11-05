from flask import Flask, request, jsonify
import pickle
import numpy as np
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

model = pickle.load(open("model.pkl", "rb"))

@app.route("/predict", methods=["POST"])
def predict():
    data = request.get_json()
    area = data["area"]
    bedrooms = data["bedrooms"]
    location = data["location"]

    prediction = model.predict([[area, bedrooms, location]])[0]
    return jsonify({"predicted_price": round(prediction, 2)})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5500, debug=True)
