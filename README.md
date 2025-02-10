# ChatApp - Ruby on Rails

ChatApp เป็นแอปพลิเคชันแชทที่สร้างด้วย Ruby on Rails รองรับการแชทแบบเรียลไทม์ พร้อมระบบ Authentication และการแสดงชื่อเจ้าของข้อความ

## Installation

### 1. Clone Repository

```sh
git clone https://github.com/Kwanpeemai/chatapp.git
cd chatapp
```

### 2. Install Dependencies

```sh
bundle install
```

### 3. Setup Database

```sh
rails db:create
rails db:migrate
```

### 4. Seed Data (Optional)

```sh
rails db:seed
```

### 5. Start Server

```sh
rails s
```

### 6. Open in Browser

```
http://localhost:3000
```

## Test Account

คุณสามารถใช้บัญชีทดสอบเพื่อเข้าสู่ระบบ:

- **Email**: [test@test.com](mailto\:test@test.com)
- **Password**: 1234

หรือสามารถสมัครสมาชิกใหม่ได้

## How It Works

1. ผู้ใช้ต้อง **สมัครสมาชิก** หรือ **ล็อกอิน** ก่อนเข้าใช้งาน
2. สามารถเลือกห้องแชทและเริ่มสนทนาได้
3. ข้อความทุกข้อความจะแสดงชื่อเจ้าของด้านหน้า
4. ผู้ใช้ 2 คนที่อยู่ในห้องเดียวกันสามารถสนทนาและมองเห็นข้อความกันได้อย่างถูกต้อง
5. UI ถูกปรับแต่งให้ดูสวยงามและใช้งานง่าย

## Access via Web

คุณเข้าถึง ChatApp Live ได้ที่:

- [ChatApp Live](https://chatapp-lofs.onrender.com/session/new)

ล็อกอินด้วย:

- **Email**: test@gmail.com
- **Password**: test


### Known Issues

หลังจากการ **deploy** เวอร์ชันปัจจุบัน พบปัญหาว่าเมื่อต้องการ **debug** และ **deploy** ใหม่ **ไม่สามารถอัปเดตเวอร์ชันล่าสุดได้**  
ทำให้ยังคงมี **bug** บางจุด และโค้ดอาจยังไม่สมบูรณ์ในบางส่วน  

หากพบปัญหา สามารถแจ้งข้อผิดพลาดหรือร่วมพัฒนาได้ผ่าน **repository**  

**หมายเหตุ:**  
หากสมัครบัญชีใหม่ อาจต้อง **ล็อกอินซ้ำอีกครั้ง** เนื่องจากมีการแก้ไขโค้ด แต่ไม่สามารถ **deploy** เวอร์ชันล่าสุดได้ ส่งผลให้ระบบยังคงใช้โค้ดเวอร์ชันเก่าในการทำงาน