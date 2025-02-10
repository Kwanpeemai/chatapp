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

- [ChatApp Live](https://chatapp-lofs.onrender.com)

ล็อกอินด้วย:

- **Email**: test@gmail.com
- **Password**: test


### Known Issues

หลังจาก deploy เวอร์ชันที่ได้แล้ว พบปัญหาว่าเมื่อ debug แล้วไม่สามารถ deploy ใหม่ได้  
ทำให้ยังคงมีบาง **bug** อยู่ และโค้ดอาจยังไม่สมบูรณ์ในบางจุด  
หากพบปัญหา สามารถแจ้งหรือ contribute ผ่าน repository ได้
