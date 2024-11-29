import random
from faker import Faker

fake = Faker('pt_BR') 

def generate_name_male():
    first_name = fake.first_name_male()
    last_name = fake.last_name()
    return f"{first_name} {last_name}"

def generate_name_female():
    first_name = fake.first_name_female()
    last_name = fake.last_name()
    return f"{first_name} {last_name}"

def generate_email():
    return fake.free_email()
     
def generate_cpf():
    return fake.cpf()

def generate_dt_nascimento():
    date_of_birth = fake.date_of_birth(minimum_age=30, maximum_age=70)
    return date_of_birth.strftime('%d%m%Y')

def generate_address():
    return fake.address()

def generate_phone_number():
    numero = [3]
    for _ in range(7):
        numero.append(random.randint(0, 9))

    numero_aleatorio = ''.join(map(str, numero))
    return f"41{numero_aleatorio}"

def generate_cell_phone_number():
    numero = [9]
    for _ in range(8):
        numero.append(random.randint(0, 9))

    numero_aleatorio = ''.join(map(str, numero))
    return f"41{numero_aleatorio}"

def generate_cep():
    return fake.zipcode()

def generate_logradouro():
    return fake.street_name()

def generate_numero():
    return fake.building_number()

def generate_numero_randomico():
    return random.randint(1198, 2794)

def generate_bairro():
    return fake.neighborhood()

def generate_complemento():
    return fake.secondary_address()

def generate_referencia():
    return fake.street_address()

def generate_nucleo_regional():
    nucleos_regionais = ['BAIRRO NOVO']
    return fake.random.choice(nucleos_regionais)

def generate_cidade():
    return fake.city()

def generate_estado():
    return fake.state()

def generate_custom_data(field):
    try:
        return getattr(fake, field)()
    except AttributeError:
        raise ValueError(f"Campo '{field}' não é suportado pelo Faker.")
