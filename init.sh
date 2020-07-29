sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo nginx -c /etc/nginx/sites-enabled/test.conf restart
sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
gunicorn -c /home/box/web/etc/gunicorn-wsgi.conf home:application

