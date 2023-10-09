# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project files into the container
COPY . /app/

# Expose the port your application runs on
EXPOSE 8000
# Apply database migrations
#RUN python manage.py makemigrations
#RUN python manage.py migrate

# Collect static files
#RUN python manage.py collectstatic --noinput
# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
