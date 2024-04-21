cd /home/alumno/Escritorio/sakai/kernel/

sudo mvn test -Dsurefire.useFile=false > /home/alumno/Escritorio/logtest.txt
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" /home/alumno/Escritorio/logtest.txt > /home/alumno/Escritorio/cleaned_logtest.txt

cd ..
cd ..

rm logtest.txt


#$HOME/pmd-bin-7.0.0/bin/pmd check -d /home/alumno/Escritorio/sakai/kernel/ -R /home/alumno/Escritorio/reglas.xml -f xml

$HOME/pmd-bin-7.0.0/bin/pmd check -d /home/alumno/Escritorio/sakai/kernel/api/src/main/java/org/sakaiproject/memory/util/ -R /home/alumno/Escritorio/reglas.xml -f xml
