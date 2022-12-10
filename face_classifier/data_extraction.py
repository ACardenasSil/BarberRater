import cv2
import mediapipe as mp
import math
import pandas as pd
import os
from pathlib import Path
import glob


# To list
# Detect facial landmarks -- DONE
# Process facial landmarks -- DONE
# Extract needed features -- DONE
# Need to find a data set -- DONE
# Build the prediction model


# Might need to do some image pre-processing


# Description: 
# Currently I have extracted 19 facial landmarks
# I need to use this data to classify face into
# a category (Heart, Round, Oblong, Oval, Square)
# For example, round faces have values in some
# ranges, square faces have values in a different
# range, and so on.

# The dataset I found online contined 4000 images
# of celebrities that have one of the face shape 
# categories. The dataset is subdivided into 5 subsets of
# 800 each. Each subset corresponding to the respective
# face shape category (Heart, Round, Oblong, Oval, Square).
# This script was used to process the images and extract features.
# The extracted data is written to a csv file



def MeasureDistance(Point1, Point2):

    Point1_x = int(Point1.x * width)
    Point1_y = int(Point1.y * height)


    Point2_x = int(Point2.x * width)
    Point2_y = int(Point2.y * height)

    distance = math.dist([Point1_x, Point1_y], [Point2_x, Point2_y])

    return distance


def arctangent(Point1, Point2):

     y = abs(Point1.y - Point2.y)
     x = abs(Point1.x - Point2.x)

     angle = math.atan(y/x)
     return angle



def DrawPoint(Point):
    # This function draws a point for reference in the image

    Point_x = int(Point.x * width)
    Point_y = int(Point.y * height)
    cv2.circle(image, (Point_x, Point_y), 2, (100, 100, 0), -1)


folder_dir = 'Pictures\Dataset\TrainData\Oblong'

images = Path(folder_dir).glob('*.jpg')

data_list = []



for images in glob.iglob(f'{folder_dir}/*'):

    if (images.endswith(".jpg")):


        image_name = os.path.basename(images)

        # Face Mesh
        mp_face_mesh = mp.solutions.face_mesh

        face_mesh = mp_face_mesh.FaceMesh()

        image = cv2.imread(images)


        height, width, _ = image.shape


        #print("Height, Width", height, width)

        rgb_image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

        # Facial landmarks
        result = face_mesh.process(rgb_image)

        if result.multi_face_landmarks is not None:

            for facial_landmarks in result.multi_face_landmarks:
                #for i in range(0, 468):
                    #pt9 = facial_landmarks.landmark[i]
                    #pt9_x = int(pt9.x * width)
                    #pt9_y = int(pt9.y * height)

                    #cv2.circle(image, (pt9_x,pt9_y), 2, (100, 100, 0), -1)

                # Marking coordinates for the facial points
                # that I need to process the extraction of facial features.
                pt1 = facial_landmarks.landmark[162]
                DrawPoint(pt1)

                pt2 = facial_landmarks.landmark[127]
                DrawPoint(pt2)

                # Might need to change point 3 in the future
                pt3 = facial_landmarks.landmark[137]
                DrawPoint(pt3)

                pt4 = facial_landmarks.landmark[132]
                DrawPoint(pt4)

                pt5 = facial_landmarks.landmark[138]
                DrawPoint(pt5)

                pt6 = facial_landmarks.landmark[136]
                DrawPoint(pt6)

                pt7 = facial_landmarks.landmark[150]
                DrawPoint(pt7)

                pt8 = facial_landmarks.landmark[176]
                DrawPoint(pt8)

                pt9 = facial_landmarks.landmark[152]
                DrawPoint(pt9)

                pt10 = facial_landmarks.landmark[400]
                DrawPoint(pt10)

                pt11 = facial_landmarks.landmark[379]
                DrawPoint(pt11)

                # Might need to change point 12 in the future
                pt12 = facial_landmarks.landmark[365]
                DrawPoint(pt12)
    
                pt13 = facial_landmarks.landmark[367]
                DrawPoint(pt13)

                pt14 = facial_landmarks.landmark[401]
                DrawPoint(pt14)

                pt15 = facial_landmarks.landmark[366]
                DrawPoint(pt15)

                pt16 = facial_landmarks.landmark[264]
                DrawPoint(pt16)

                pt17 = facial_landmarks.landmark[389]
                DrawPoint(pt17)

                pt18 = facial_landmarks.landmark[10]
                DrawPoint(pt18)

                pt19 = facial_landmarks.landmark[17]
                DrawPoint(pt19)


                # Begin Extration of facial landmark features

                face_length = MeasureDistance(pt9, pt18)
                forehead_length = MeasureDistance(pt1, pt17)

                feature_1 = face_length / forehead_length

                jawline_length = MeasureDistance(pt5, pt13)

                feature_2 = jawline_length / forehead_length

                mouth_chin_length = MeasureDistance(pt9, pt19)

                feature_3 = mouth_chin_length / jawline_length

    
                # features 4 through 11 are the angles (radians)
                # the points make with point 9, starting
                # front the LEFT ear.

                # This can be optimized with a loop
                # for testing purposes this will serve for now.

                feature_4 = arctangent(pt1, pt9)

                feature_5 = arctangent(pt2, pt9)

                feature_6 = arctangent(pt3, pt9)

                feature_7 = arctangent(pt4, pt9)

                feature_8 = arctangent(pt5, pt9)

                feature_9 = arctangent(pt6, pt9)

                feature_10 = arctangent(pt7, pt9)

                feature_11 = arctangent(pt8, pt9)

                # features 12 through 19 are the angles (radians)
                # the points make with point 9, starting
                # front the RIGHT ear.

                feature_12 = arctangent(pt10, pt9)

                feature_13 = arctangent(pt11, pt9)

                feature_14 = arctangent(pt12, pt9)

                feature_15 = arctangent(pt13, pt9)

                feature_16 = arctangent(pt14, pt9)

                feature_17 = arctangent(pt15, pt9)

                feature_18 = arctangent(pt16, pt9)

                feature_19 = arctangent(pt17, pt9)

                
                data = [image_name, 'Oblong', feature_1, feature_2, feature_3, feature_4, feature_5, feature_6,
                        feature_7, feature_8, feature_9, feature_10, feature_11, feature_12, feature_13, feature_14,
                        feature_15, feature_16, feature_17, feature_18, feature_19]

                data_list.append(data)

                #print(data)


#cv2.imshow("Image", image)

print(data_list)
df = pd.DataFrame(data_list, columns=['ImageName', 'Label', 'Feature 1', 'Feature 2','Feature 3', 'Feature 4', 'Feature 5',
                                      'Feature 6', 'Feature 7', 'Feature 8', 'Feature 9', 'Feature 10', 'Feature 11',
                                      'Feature 12', 'Feature 13', 'Feature 14', 'Feature 15', 'Feature 16', 'Feature 17',
                                      'Feature 18', 'Feature 19'])

df.to_csv('dataset.csv')

cv2.waitKey(0)


