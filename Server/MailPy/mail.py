#import smtplib
#from email.mime.text import MIMEText

# Configuración del servidor SMTP y las credenciales
#smtp_server = 'smtp.office365.com'
#smtp_port = 587
#username = 'guido.rios@redsalud.gob.cl'
#password = '4*&Sap75:/RL=_W'

# Crear el objeto MIMEText con el contenido del correo electrónico
#message = MIMEText('Este es el contenido del correo electrónico.')
#message['Subject'] = 'Asunto del correo electrónico'
#message['From'] = 'guido.rios@redsalud.gob.cl'
#message['To'] = 'guido.rios@redsalud.gob.cl'

# Establecer conexión con el servidor SMTP y enviar el correo electrónico
#with smtplib.SMTP(smtp_server, smtp_port) as server:
#    server.starttls()  # Iniciar la conexión segura TLS
#    server.login(username, password)
#    server.send_message(message)
#    print('El correo electrónico ha sido enviado correctamente.')


import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

# Configuración del servidor SMTP de Outlook
smtp_server = 'smtp.office365.com'
smtp_port = 587

# Credenciales de la cuenta de Outlook
username = 'guido.rios@redsalud.gob.cl'
password = '4*&Sap75:/RL=_W'

# Crear objeto MIMEMultipart
message = MIMEMultipart()
message['From'] = 'guido'
message['To'] = 'guido.rios@redsalud.gob.cl'
message['Subject'] = 'Asunto del correo electrónico'


# Agregar el contenido del correo electrónico
message.attach(MIMEText('Este es el contenido del correo electrónico.'))

# Establecer conexión con el servidor SMTP de Outlook
with smtplib.SMTP(smtp_server, smtp_port) as server:
    server.starttls()  # Iniciar la conexión segura TLS
    server.login(username, password)
    server.send_message(message)
    print('El correo electrónico ha sido enviado correctamente.')
