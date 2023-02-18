from face_shape_prediction import *

import os
from flask import Flask, request, render_template

UPLOAD_FOLDER = './upload'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        if 'file1' not in request.files:
            return 'there is no file1 in form!'
        file1 = request.files['file1']


        path = os.path.join(app.config['UPLOAD_FOLDER'], file1.filename)

        file1.save(path)

        message = MakePrediction(path)

        return message

        return 'ok'

    return render_template('upload_picture.html')

if __name__ == '__main__':
    app.run()