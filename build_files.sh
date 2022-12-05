echo "Building the project..."
python3.11.0 -m pip install -r requirements.txt

echo "Make Migrations..."
python3.11.0 manage.py makemigrations --noinput
python3.11.0 manage.py migrate --noinput

echo "Collect static..."
python3.11.0 manage.py collectstatic --noinput --clear
echo "BUILD END"