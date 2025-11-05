import pandas as pd
from sklearn.linear_model import LinearRegression
import pickle

# Dummy training data
data = {
    "area": [1000, 1500, 1800, 2400, 3000],
    "bedrooms": [2, 3, 3, 4, 5],
    "location": [1, 2, 2, 3, 3],  # Encoded locations
    "price": [200000, 250000, 300000, 350000, 400000]
}

df = pd.DataFrame(data)

X = df[["area", "bedrooms", "location"]]
y = df["price"]

model = LinearRegression()
model.fit(X, y)

pickle.dump(model, open("model.pkl", "wb"))
print("✅ Model trained and saved as model.pkl")
