# ChatApp - Ruby on Rails

ChatApp เป็นแอปพลิเคชันแชทที่สร้างด้วย Ruby on Rails รองรับการแชทแบบเรียลไทม์ พร้อมระบบ Authentication และการแสดงชื่อเจ้าของข้อความ

## Features

- **Authentication**: ใช้ Devise สำหรับระบบล็อกอินและลงทะเบียน
- **User Ownership**: ข้อความแต่ละข้อความจะมีเจ้าของ และแสดงชื่อผู้ส่ง
- **Real-time Chat**: ใช้ ActionCable สำหรับแสดงข้อความแบบเรียลไทม์
- **Chat Room Validation**: ตรวจสอบให้แน่ใจว่าผู้ใช้สองคนสามารถสนทนาในห้องเดียวกันและแสดงผลถูกต้อง
- **UI Styling**: ปรับแต่งหน้าตาให้สวยงามและใช้งานง่ายด้วย Bootstrap หรือ Tailwind CSS

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

### 6. Start Redis (for ActionCable)

```sh
redis-server
```

### 7. Open in Browser

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

