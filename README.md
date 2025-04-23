# Bài tập 5 của Nguyễn Trung Hiếu - K225480106019 - Lớp K58KTP - MÔN HQT CSDL
## Nội dung bài tập 5:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.
## A. Đồ án PTTKHT: Phân tích thiết kế hệ thống sổ liên lạc điện tử
### 1. Mô tả đồ án
Hệ thống sổ liên lạc điện tử là một giải pháp công nghệ thông tin nhằm thay thế sổ liên lạc giấy truyền thống, giúp kết nối giữa nhà trường và phụ huynh học sinh một cách nhanh chóng, thuận tiện và hiệu quả. Hệ thống cho phép giáo viên cập nhật tình hình học tập, điểm số, nhận xét của học sinh cũng như thông báo từ nhà trường, trong khi phụ huynh có thể dễ dàng theo dõi và phản hồi lại thông tin.
### 2. Yêu cầu của bài toán
1. Yêu cầu chức năng
- Đăng nhập/Đăng xuất: Tài khoản dành cho giáo viên, phụ huynh và quản trị viên.
- Quản lý thông tin người dùng: Cập nhật thông tin cá nhân, phân quyền tài khoản.
- Quản lý học sinh: Thêm/sửa/xóa thông tin học sinh, liên kết với phụ huynh.
- Ghi nhận kết quả học tập: Giáo viên nhập điểm, nhận xét, chuyên cần,...
- Gửi thông báo: Gửi thông báo từ giáo viên hoặc nhà trường đến phụ huynh.
- Phản hồi từ phụ huynh: Cho phép phụ huynh gửi ý kiến/trao đổi với giáo viên.
- Báo cáo và thống kê: Thống kê tình hình học tập, chuyên cần, mức độ tương tác.
2. Yêu cầu phi chức năng
- Giao diện thân thiện, dễ sử dụng: Phù hợp với nhiều đối tượng người dùng.
- Bảo mật dữ liệu: Đảm bảo thông tin học sinh và người dùng được bảo mật.
- Tốc độ xử lý nhanh: Phản hồi thao tác người dùng một cách mượt mà.
- Khả năng mở rộng: Dễ dàng tích hợp thêm chức năng trong tương lai.
### 3. Cơ sở dữ liệu của đồ án
Bảng NguoiDung:
![Ảnh chụp màn hình 2025-04-23 190437](https://github.com/user-attachments/assets/97a578b6-10cf-41ff-b487-d37d9923b523)
Bảng HocSinh gồm PK là trường idhocsinh, FK là trường idphuhuynh liên kết với iduser (ở bảng NguoiDung) để liên kết học sinh đó với phụ huynh:
![Ảnh chụp màn hình 2025-04-23 191630](https://github.com/user-attachments/assets/9f3bd3b5-a2b3-49b5-882c-c0e0a27b2e23)
Bảng ChuNhiem gồm PK là id, FK là trường id_giaovien và id_hocsinh:
![Ảnh chụp màn hình 2025-04-23 192202](https://github.com/user-attachments/assets/3984abb6-1916-4c5a-9ed4-fcea1f1772f8)
Bảng DiemDanh:
![Ảnh chụp màn hình 2025-04-23 192658](https://github.com/user-attachments/assets/288bded8-7570-48fe-836c-2393c7a779ed)
Bảng KetQuaHocTap:
![Ảnh chụp màn hình 2025-04-23 193633](https://github.com/user-attachments/assets/85503588-e16a-403a-8e42-97fe27833a57)
Bảng ThongBao:
![Ảnh chụp màn hình 2025-04-23 194554](https://github.com/user-attachments/assets/8d09296b-5b80-4881-b572-691bb48fc43f)
Bảng PhanHoi:
![Ảnh chụp màn hình 2025-04-23 195020](https://github.com/user-attachments/assets/4a73867d-7ef1-4e2e-829c-06ae2d69f570)
## B. Bài tập 5
### Trong bảng KetQuaHocTap em đã bổ sung một trường phi chuẩn là diemtb (nội dung trường này là điểm trung bình, và có thể được tính từ các trường dữ liệu điểm số khác). Việc thêm sẵn trường diemtb để tiết kiệm thời gian khi truy xuất dữ liệu.
![Ảnh chụp màn hình 2025-04-23 200255](https://github.com/user-attachments/assets/c7216a64-fa41-4627-a885-df8770056466)
### Nhập dữ liệu demo cho một số bảng có liên quan đến việc chạy trigger:
![image](https://github.com/user-attachments/assets/11b8841f-a390-490a-b811-fb4133fb5395)
![image](https://github.com/user-attachments/assets/bcd4ccde-b043-4a3f-8bf6-10bcb503d492)
![image](https://github.com/user-attachments/assets/4b9fc9c7-893b-4f0b-b38e-69ca52e2eb30)
![image](https://github.com/user-attachments/assets/c7500ce2-a88d-444b-ac84-47cb51bbcdc0)
### Tạo trigger cho bảng KetQuaHocTap với nội dung là tự động tính điểm trung bình (diemtb) mỗi khi insert hoặc update điểm, và một trigger tạo cảnh báo khi điểm quá thấp (diemtb < 4). Từ đó mỗi khi thay đổi điểm cho học sinh, hệ thống sẽ tự động tính điểm tb đồng thời có thể cảnh báo nếu điểm tb của học sinh đó quá thấp:
```sql
CREATE TRIGGER trg_TinhDiemTB
ON KetQuaHocTap
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE KetQuaHocTap
    SET diemtb = ROUND(
        (ISNULL(i.diemhso1, 0) + ISNULL(i.diemhso2, 0) * 2 + ISNULL(i.diemhso3, 0) * 3) / 6.0,
        2
    )
    FROM KetQuaHocTap k
    INNER JOIN inserted i ON k.idketqua = i.idketqua;
END;
```
#### Kết quả sau khi tạo trigger tính điểm tb:
![image](https://github.com/user-attachments/assets/2bc880fa-222a-432c-9466-e3f64e0e8e45)
```sql
CREATE TRIGGER trg_CanhBaoDiemThap
ON KetQuaHocTap
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @id VARCHAR(12), @tb FLOAT;
    -- Duyệt từng bản ghi trong bảng inserted (hỗ trợ nhiều dòng nếu cần)
    DECLARE cur CURSOR FOR
        SELECT idketqua,
               (ISNULL(diemhso1, 0) + ISNULL(diemhso2, 0) * 2 + ISNULL(diemhso3, 0) * 3) / 6.0 AS diemtb
        FROM inserted;
    OPEN cur;
    FETCH NEXT FROM cur INTO @id, @tb;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        IF (@tb < 4)
        BEGIN
            PRINT N'Cảnh báo: Học sinh với ID ' + @id + N' có điểm trung bình dưới 4 (Điểm TB: ' + CAST(@tb AS NVARCHAR(10)) + ')';
        END
        FETCH NEXT FROM cur INTO @id, @tb;
    END
    CLOSE cur;
    DEALLOCATE cur;
END;
```
#### Kết quả sau khi tạo trigger cảnh báo điểm tb thấp:
![image](https://github.com/user-attachments/assets/857ae3c0-9ae0-482b-99c7-8dea1129514c)
#### Như vậy, sau khi sử dụng trigger, nó giúp tăng hiệu quả khi làm việc với sql, tự động tính toán các trường phi chuẩn và cũng cung cấp khả năng cảnh báo dữ liệu. Nhờ trigger, người dùng có thể nhập dữ liệu một cách chính xác hơn và đảm bảo tính toàn vẹn và thống nhất.
