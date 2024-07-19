#!/bin/ash
echo "Suppression des fichiers tmp..."
rm -rf /home/container/tmp/*
echo "✓"
echo "Suppression des fichiers logs..."
rm -rf /home/container/logs/*
echo "✓"

echo "⟳ Démarrage de PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize
echo "✓"

echo " _   _      _   _    _           _        ______ _____  "
echo "| \ | |    | | | |  | |         | |      |  ____|  __ \ "
echo "|  \| | ___| |_| |__| | ___  ___| |_     | |__  | |__) |"
echo "| . ` |/ _ \ __|  __  |/ _ \/ __| __     |  __| |  _  / "
echo "| |\  |  __/ |_| |  | | (_) \__ \ |_     | |    | | \ \ "
echo "|_| \_|\___|\__|_|  |_|\___/|___/\__     |_|    |_|  \_\"
echo "L'hébergement accéssible à tous par Laz - www.nethost.fr"
echo ""

echo "⟳ Démarrage de Nginx..."
echo "✓ Le serveur a démarré correctement."
/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/
