from rest_framework import viewsets
from .serializers import PatientSerializer
from .models import Patient


class PatientviewSet(viewsets.ModelViewSet):
    queryset = Patient.objects.all()
    serializer_class = PatientSerializer

