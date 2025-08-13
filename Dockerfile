# Usa imagen oficial de PHP 8.2 con CLI
FROM php:8.2-cli

# Instala utilidades necesarias
RUN apt-get update && apt-get install -y unzip zip && rm -rf /var/lib/apt/lists/*

# Establece la carpeta de trabajo
WORKDIR /var/www/html

# Copia todo el contenido del proyecto
COPY . .

# Expone el puerto que Render espera
EXPOSE 10000

# Inicia el servidor PHP embebido
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/var/www/html"]
