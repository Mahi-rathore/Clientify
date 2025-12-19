# Clientify

Clientify is a professional web application built using **Django, HTML, CSS**, and **Python**.  
It showcases projects, happy clients, contact forms, and newsletter subscriptions with a clean, professional design.

---

## Features

- **Projects Section**: Display all projects with images, names, and descriptions.
- **Happy Clients Section**: Showcase client testimonials with images, names, designations, and feedback.
- **Contact Form**: Users can submit their contact information (Full Name, Email, Mobile, City).
- **Newsletter Subscription**: Users can subscribe using their email address.
- **Professional Design**: Gradient background, clean typography, card-style sections, hover effects, and responsive layout.
- **Admin Panel**: Easily manage projects, clients, and submissions.

---

## Installation

1. Clone the repository:

   ```bash
     git clone https://github.com/username/Clientify.git
     cd Clientify
2. Create a virtual environment
   
        python -m venv venv
       venv\Scripts\activate  # Windows
       source venv/bin/activate  # Linux/Mac

3. Install dependencies
   
        pip install -r requirements.txt

4. Apply migrations
   
        python manage.py makemigrations
        python manage.py migrate

5. Create a superuser to access admin

                    python manage.py createsuperuser

6. Run the server
    
         python manage.py runserver

7. Open in browser

              http://127.0.0.1:8000
            http://127.0.0.1:8000/admin



Usage
   
   Add projects and clients from Django admin panel.

  Submit contact form or newsletter to test functionality.

  All images appear automatically on landing page.




