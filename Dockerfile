# استخدام نسخة خفيفة ومستقرة من Go
FROM golang:1.22-alpine

# تحديد مجلد العمل
WORKDIR /app

# نسخ ملفات الكود
COPY . .

# بناء التطبيق
RUN go build -o main cmd/main.go

# تشغيل الخدمة
CMD ["./main"]
