# Resmi Node.js imajını temel alın
FROM node:16-alpine

# Çalışma dizinini ayarla
WORKDIR /app

# package.json ve package-lock.json dosyalarını kopyala
COPY package*.json ./

# Node.js bağımlılıklarını yükle
RUN npm install

# Tüm uygulama dosyalarını kopyala
COPY . .

# Uygulamanın çalışacağı portu belirt
EXPOSE 3000

# Uygulamayı başlat
CMD ["npm", "start"]
