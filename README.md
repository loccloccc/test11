# Product API — Java 17 + Spring Boot + Gradle + MySQL

RESTful API CRUD đơn giản để luyện tập Backend, quản lý sản phẩm và lưu dữ liệu trong MySQL.

## Công nghệ
- Java 17
- Spring Boot 3.4.5
- Gradle
- Spring Web
- Spring Data JPA / Hibernate
- MySQL

## 1. Chuẩn bị
1. Cài JDK 17.
2. Mở project bằng IntelliJ IDEA và chờ Gradle đồng bộ dependencies.
3. Khởi động MySQL trong XAMPP hoặc MySQL Server.
4. Mở `src/main/resources/application.properties`, sửa username/password cho khớp MySQL của bạn.

## 2. Chạy project
Tại thư mục chứa `build.gradle`, chạy:

```bash
gradle bootRun
```

Hoặc trong IntelliJ IDEA, chạy `ProductApiApplication.java`.

Nếu máy đã cài Gradle, lệnh trên sẽ chạy ứng dụng. Nếu chưa cài Gradle, bạn có thể mở project bằng IntelliJ IDEA và cấu hình Gradle; hoặc tạo Gradle Wrapper trong thư mục project bằng lệnh `gradle wrapper`, sau đó chạy `./gradlew bootRun` (Windows: `gradlew.bat bootRun`).

Ứng dụng được cấu hình tạo database `product_db` nếu tài khoản có đủ quyền, tự tạo/cập nhật bảng `products` và nạp dữ liệu mẫu từ `data.sql`.

## 3. REST endpoints

| Method | URL | Chức năng |
|---|---|---|
| GET | `/api/products` | Lấy tất cả sản phẩm |
| GET | `/api/products/1` | Lấy sản phẩm theo ID |
| POST | `/api/products` | Thêm sản phẩm |
| PUT | `/api/products/1` | Cập nhật sản phẩm ID 1 |
| DELETE | `/api/products/1` | Xóa sản phẩm ID 1 |

Base URL: `http://localhost:8080`

### Ví dụ POST /api/products
Header: `Content-Type: application/json`

```json
{
  "name": "Monitor",
  "description": "Màn hình 24 inch",
  "price": 2490000
}
```

## 4. Cấu trúc project

```text
product-api/
├── build.gradle
├── settings.gradle
├── src/main/java/com/example/productapi/
│   ├── ProductApiApplication.java
│   └── product/
│       ├── Product.java
│       ├── ProductRepository.java
│       ├── ProductService.java
│       └── ProductController.java
└── src/main/resources/
    ├── application.properties
    └── data.sql
```

## 5. Vai trò các file
- `Product`: Entity ánh xạ bảng `products`.
- `ProductRepository`: CRUD với database qua Spring Data JPA.
- `ProductService`: xử lý nghiệp vụ.
- `ProductController`: nhận HTTP requests và trả JSON.
- `data.sql`: 5 sản phẩm mẫu được nạp khi ứng dụng khởi động.

## Lưu ý
- Dùng `INSERT IGNORE` để hạn chế lỗi trùng ID khi ứng dụng khởi động lại.
- Cấu hình này dành cho môi trường học tập local; không dùng `ddl-auto=update` hoặc mật khẩu hard-code cho production.
"# test11" 
