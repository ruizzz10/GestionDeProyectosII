/home/alumno/pmd-bin-7.0.0/bin/pmd check -d /home/alumno/Escritorio/easybuggy/ -R /home/alumno/Escritorio/reglas.xml -f xml


cd /home/alumno/Escritorio/easybuggy/

sudo mvn clean install -Dsurefire.useFile=false > /home/alumno/Escritorio/logeasy.txt
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" /home/alumno/Escritorio/logeasy.txt > /home/alumno/Escritorio/cleaned_logeasy.txt

cd ..
cd ..

rm logeasy.txt


#$HOME/pmd-bin-7.0.0/bin/pmd check -d /home/alumno/Escritorio/sakai/kernel/ -R /home/alumno/Escritorio/reglas.xml -f xml

