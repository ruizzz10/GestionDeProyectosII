cd /home/alumno/Escritorio/sakai/kernel/

sudo mvn clean install -Dsurefire.useFile=false > /home/alumno/Escritorio/log.txt
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" /home/alumno/Escritorio/log.txt > /home/alumno/Escritorio/cleaned_log.txt

cd ..
cd ..

rm log.txt


#$HOME/pmd-bin-7.0.0/bin/pmd check -d /home/alumno/Escritorio/sakai/kernel/ -R /home/alumno/Escritorio/reglas.xml -f xml

$HOME/pmd-bin-7.0.0/bin/pmd check -d /home/alumno/Escritorio/sakai/kernel/api/src/main/java/org/sakaiproject/memory/util/ -R /home/alumno/Escritorio/reglas.xml -f xml
