#cat sample.html | msmtp -a "text/html" -C ~/.msmtprc "guido.rios@redsalud.gov.cl"
cat template.html | msmtp -a "text/html" -C ~/.msmtprc $1;
