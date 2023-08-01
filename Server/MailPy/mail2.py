from exchangelib import Credentials, Account, Message, Mailbox, HTMLBody

# Configuración de las credenciales
username = 'guido.rios@redsalud.gob.cl'
password = '4*&Sap75:/RL=W'

# Configuración de la cuenta de Exchange
exchange_server = 'smtp.office365.com'

# Crear las credenciales y la cuenta de Exchange
credentials = Credentials(username=username, password=password)
account = Account(primary_smtp_address=username, credentials=credentials, autodiscover=True, config={
    'server': exchange_server,
    'credentials': credentials
})

# Crear el objeto del mensaje de correo electrónico
subject = 'Asunto del correo electrónico'
body = '<p>Este es el contenido del correo electrónico.</p>'
to_recipients = [Mailbox(email_address='guido.rios@redsalud.gob.cl')]
message = Message(account=account, folder=account.sent, subject=subject, body=HTMLBody(body), to_recipients=to_recipients)

# Enviar el correo electrónico
message.send_and_save()
print('El correo electrónico ha sido enviado correctamente.')
