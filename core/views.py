from django.shortcuts import render
from .models import Project, Client, Contact, Subscriber

def home(request):
    projects = Project.objects.all()
    clients = Client.objects.all()

    if request.method == "POST":

        if 'contact_submit' in request.POST:
            Contact.objects.create(
                full_name=request.POST.get('full_name'),
                email=request.POST.get('email'),
                mobile=request.POST.get('mobile'),
                city=request.POST.get('city')
            )

        if 'subscribe_submit' in request.POST:
            Subscriber.objects.get_or_create(
                email=request.POST.get('email')
            )

    return render(request, 'home.html', {
        'projects': projects,
        'clients': clients
    })
