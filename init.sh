sudo rm /etc/nginx/sites-available/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-availble/test.conf
sudo /etc/init.d/nginx  restart
sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
gunicorn -c /home/box/web/etc/gunicorn-wsgi.conf home:application

