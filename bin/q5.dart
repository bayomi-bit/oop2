void main() {
  Doctor doctor1 = Doctor();
  doctor1.setName("omar");
  doctor1.setSpecialization("general");
  doctor1.setAge(25);
  doctor1.showPatients();

  Doctor doctor2 = Doctor();
  doctor2.setName("Esraa");
  doctor2.setSpecialization("heart");
  doctor2.setAge(21);
  doctor2.showPatients();

  Patient patient1 = Patient();
  patient1.setName("ahmed");
  patient1.setIllness("hart attack");
  patient1.setAge(40);
  doctor2.addPatient(patient1);

  Patient patient2 = Patient();
  patient2.setName("ali");
  patient2.setIllness("cold");
  patient2.setAge(30);
  doctor1.addPatient(patient2);

  Patient patient3 = Patient();
  patient3.setName("hassan");
  patient3.setIllness("flu");
  patient3.setAge(35);
  doctor1.addPatient(patient3);

  Hospital hospital = Hospital();
  hospital.addPatient(patient1);
  hospital.addPatient(patient2);
  hospital.addPatient(patient3);
  hospital.addDoctor(doctor1);
  hospital.addDoctor(doctor2);
  hospital.showDoctors();
  hospital.showPatients();
}

abstract class Person {
  String? _name;
  int? _age;

  void setName(String name) {
    if (name.isEmpty) {
      print("Name cannot be empty");
    } else {
      _name = name;
    }
  }

  void setAge(int age) {
    if (age < 0) {
      print("Age cannot be negative");
    } else {
      _age = age;
    }
  }

  String getName() {
    return _name!;
  }

  int getAge() {
    return _age!;
  }

  void display();
}

class Patient extends Person {
  String? _illness;

  void setIllness(String illness) {
    if (illness.isEmpty) {
      print("Illness cannot be empty");
    } else {
      _illness = illness;
    }
  }

  String getIllness() {
    return _illness!;
  }

  @override
  void display() {
    print("Name: ${getName()}");
    print("Age: ${getAge()}");
    print("Illness: ${getIllness()}");
  }
}

class Doctor extends Person {
  String? _specialization;
  String? _name;
  List<Patient> _patients = [];

  void addPatient(Patient patient) {
    if (_patients.contains(patient)) {
      print("Patient already exists");
    } else {
      _patients.add(patient);
      print(
          "patient ${patient.getName()} is already assigned to doctor ${getName()}");
    }
  }

  void showPatients() {
    if (_patients.isEmpty) {
      print("No patients");
    } else {
      for (var patient in _patients) {
        print("${patient._name} is assigned to doctor ${getName()}");
      }
    }
  }

  void setSpecialization(String specialization) {
    if (specialization.isEmpty) {
      print("Specialization cannot be empty");
    } else {
      _specialization = specialization;
    }
  }

  String getSpecialization() {
    return _specialization!;
  }

  @override
  void display() {
    print(
        "doctor name: ${getName()}, specialization: ${getSpecialization()},age: ${getAge()}");
  }
}

class Hospital {
  List<Doctor> _doctors = [];
  List<Patient> _patients = [];

  void addPatient(Patient patient) {
    if (_patients.contains(patient)) {
      print("Patient already exists");
    } else if (_patients.length > 7) {
      print("Hospital is full");
    } else {
      _patients.add(patient);
      print("patient ${patient.getName()} added to hospital");
    }
  }

  void addDoctor(Doctor doctor) {
    if (_doctors.contains(doctor)) {
      print("Doctor already exists");
    } else {
      _doctors.add(doctor);
      print("doctor ${doctor.getName()} added to hospital");
    }
  }

  void showPatients() {
    if (_patients.isEmpty) {
      print("No patients");
    } else {
      print("patients in hospital:");
      for (var patient in _patients) {
        print("${patient._name} ");
      }
    }
  }

  void showDoctors() {
    if (_doctors.isEmpty) {
      print("No doctors");
    } else {
      print("doctors in hospital:");
      for (var doctor in _doctors) {
        print("${doctor._name} ");
      }
    }
  }
}
