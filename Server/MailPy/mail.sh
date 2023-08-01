# echo "Este es un correo electrnnnico de prueba enviado usando msmtp" | msmtp -a default guido.rios@redsalud.gov.cl
# echo "Cuerpo del correo" | msmtp -a "Asunto del correo" guido.rios@redsalud.gov.cl
# (echo "Adjunto de archivo de prueba"; uuencode /workspace/mail/mail.txt mail.txt) | msmtp -a default guido.rios@redsalud.gov.cl
# printf "Subject: Test\n\nhello there username. hola" | msmtp -a default guido.rios@redsalud.gov.cl
# printf "TO: guido.rios@redsalud.gov.cl FROM: guido.rios@redsalud.gov.cl" | msmtp -a default 
# cat test.mail | msmtp -a default guido.rios@redsalud.gov.cl
# cat test.html | msmtp -a "Content-Type: text/html" guido.rios@redsalud.gov.cl
# echo -e "To: guido.rios@redsalud.gov.cl\nFrom: guido.rios@redsalud.gov.cl\nSubject:Esto es una prueba\n\n\nEsto es una prueba " | msmtp -C ~/.msmtprc "guido.rios@redsalud.gov.cl"
# echo -e "To: guido.rios@redsalud.gov.cl\nFrom: guido.rios@redsalud.gov.cl\nSubject:Esto es una prueba\n\n\n<html><head><title>Test</title></head><body>hola <h1>mundo</h1></body></html> " | msmtp -a "text/html" guido.rios@redsalud.gov.cl
#cat test.html | msmtp -a "text/html" -C ~/.msmtprc "guido.rios@redsalud.gov.cl"

#cat sample.html | msmtp -a "text/html" -C ~/.msmtprc "guido.rios@redsalud.gov.cl"

echo "hello there username." | msmtp -a default user@redsalud.gob.cl
