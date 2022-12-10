import pandas as pd
from sklearn.tree import DecisionTreeClassifier
import joblib

face_shape_data = pd.read_csv("FaceShapeData.csv")
X = face_shape_data.drop(columns=['ImageName', 'Label'])
y = face_shape_data['Label']

model = DecisionTreeClassifier()
model.fit(X, y)

joblib.dump(model, 'face_shape_predictor.joblib')