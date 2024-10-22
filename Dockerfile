# Usar una imagen base de Node.js
FROM node:22

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json
COPY ./package.json ./ 
COPY ./package-lock.json ./ 

# Instalar las dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Construir la aplicación
RUN npm run build

# Exponer el puerto que usará la aplicación
EXPOSE 80

# Comando para iniciar la aplicación
CMD ["npm", "run", "dev", "--", "--host"]

