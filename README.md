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
### Mô tả đồ án
Hệ thống sổ liên lạc điện tử là một giải pháp công nghệ thông tin nhằm thay thế sổ liên lạc giấy truyền thống, giúp kết nối giữa nhà trường và phụ huynh học sinh một cách nhanh chóng, thuận tiện và hiệu quả. Hệ thống cho phép giáo viên cập nhật tình hình học tập, điểm số, nhận xét của học sinh cũng như thông báo từ nhà trường, trong khi phụ huynh có thể dễ dàng theo dõi và phản hồi lại thông tin.
### Yêu cầu của bài toán
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
### Cơ sở dữ liệu của đồ án
