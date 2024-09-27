## Khái niệm
- Bash Shell có thể gọi là 1 ngôn ngữ lập trình vì nó cũng có các khai báo biến, mảng,.. và cụ thể hơn nên gọi nó là 1 ngôn ngữ lập trình script trên hệ điều hành Linux/Unix
- Các câu lệnh trong Bash Shell được thực thi từ trên xuống dưới giống với code

## Phân loại
- Bash, Sh, Zsh, Ksh,..
- Có rất nhiều loại nhưng phổ biến nhất vẫn là Bash và Sh

## Các trạng thái(kiểu) của Shell
### Full Shell
- Shell tương tác đầy đủ, giống như truy cập trực tiếp trên hệ thống.

### Half Shell
- Shell hạn chế hoặc không tương tác đầy đủ, thường gặp trong các cuộc khai thác bảo mật.
- Lúc này cần thực hiện 1 số payload để leo lên Full shell

https://github.com/gurkylee/Linux-Privilege-Escalation-Basics

### Login shell
Khi đăng nhập vào hệ thống Linux hay qua SSH hoặc mở Terminal thì Login shell sẽ thực thi các cấu hình từ /etc/profile và sau đó là các tệp cá nhân của người dùng như 
- ~/.bash_profile: Tìm và nếu có thì thực thi
- ~/.bash_login: Nếu ko có thằng ở trên thì tìm và thực thi
- ~/.profile: Nếu ko có 2 thằng trên thì tìm và thực thi
- ~/.bash_profile : Đọc và thực hiện các lệnh trong nó mỗi khi đăng nhập hệ thống
- ~/.bashrc : Đọc mà thực hiện mỗi lần khi bắt đầu một subshell
- ~/.bash_logout : Đọc và thực hiện mỗi lần thoát khỏi shell

### Non-login shell
- Khi mở 1 terminal hay khi chạy 1 script (example.sh) thì non-login shell sẽ chỉ đọc file ~/.bashrc và không đọc các file .bash_profile .bash_login hay .profile

- Thông thường, file .bashrc được dùng để thiết lập các alias, chức năng, và những cài đặt không yêu cầu khi đăng nhập.

Ví dụ về file .bashrc
```bash
# ~/.bashrc
alias ll='ls -lah'
export EDITOR=nano
```

### Interactive Shell
- Interactive shell yêu cầu sự tương tác từ người dùng, tức là bạn nhập lệnh và nhận kết quả trong cùng một phiên làm việc.

### Non-interactive Shell
- Non-interactive shell được dùng để chạy script hoặc lệnh mà không cần người dùng nhập lệnh trực tiếp.

### Subshell
- Subshell là một shell mới được khởi tạo từ một shell hiện tại. Subshell cho phép bạn chạy một loạt các lệnh trong một môi trường tạm thời, tách biệt với shell gốc. 
- Khi một subshell được tạo ra, nó sẽ thừa kế toàn bộ môi trường của shell cha (biến môi trường, alias, hàm, v.v.), nhưng bất kỳ thay đổi nào trong subshell (như thiết lập lại biến môi trường) sẽ không ảnh hưởng đến shell gốc.
- Bạn có thể tạo một subshell trong Bash bằng cách sử dụng các dấu ngoặc đơn ( )

Ví dụ
```bash
( echo "Đây là subshell"; cd /tmp; pwd )
```

## Best Practice
* Google search: Bash shell cheat sheet

## Bash shell script
- Hmm thì nó cũng giống code thôi (từ biến mảng, điều kiện, xử lý file,..) và nó là tổng hợp của các câu lệnh shell, có gì cần thì cứ google. 
- Bài này mình đi nhanh thằng Shell thôi, trong thư mục bên cạnh (test) chính là 1 script shell cơ bản.
- À quên, muốn chạy 1 file script thì trước đó phải cấp quyền cho file: `chmod +X test.sh` , và chạy file: `./test.sh` hay `/bin/bash test.sh`