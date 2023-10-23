function create-flask-app() {
    mkdir $1
    git clone https://github.com/Sayed-Afnan-Khazi/flask-application-factory-pattern-template.git
    mv flask-application-factory-pattern-template/* $1
    rm -rf flask-application-factory-pattern-template
    cd $1
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    rm -rf .git
    git init
    echo "SECRET_KEY=SET_YOUR_OWN_KEY
FLASK_APP=app
FLASK_ENV=development
DATABASE_URL=" > .env
    echo " Flask app $1 created successfully!"
    echo "Please set your database URI in the .env file"
    echo "To start $1:"
    echo "cd $1"
    echo "flask run"
}