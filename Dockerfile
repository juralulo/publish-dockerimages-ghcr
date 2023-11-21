# บอกว่าเป็น os อะไร เอา version ล่าสุด
FROM alpine:latest

#เป็นการ install bash ลงไปในเครื่อง
RUN apk add --no-cache bash

# สร้าง working directory ขื่อ app
WORKDIR /app

# copy ไฟล์ไปไว้ที่ app
COPY entrypoint.sh .

# เพิ่มสิทธิให้สามารถ execute ได้
RUN chmod +x entrypoint.sh

# เป็นการบอกว่าเมื่อเริ่มทำงานแล้วให้ทำงานอะไรเป็นอย่างแรก
ENTRYPOINT ["/app/entrypoint.sh"]