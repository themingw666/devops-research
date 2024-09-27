Khái niệm
Vim - thằng này thì quá quen thuộc rồi. Dùng Linux, khi config file thì luôn phải dùng Vim, hoặc dùng Nano
Khi mở file thì đang ở 1 trạng thái nào đó giống với view, không thể đánh văn bản, chỉ có thể sửa file bằng các keyword - mình gọi trạng thái này là trạng thái 1
Ở trạng thái 1, khi bấm vào 1 ký tự trên bàn phím thì chuyển qua trạng thái có thể gõ chứ - mình gọi trạng thái này là trạng thái 2
Ở thạng thái 2 mình có thể sử dụng các keyword để find ký tự, xóa nhanh 1 line,.. (hướng dẫn ở dưới). Nhấn phím Esc để trở về trạng thái 1

Các thao tác cơ bản
Mở file để edit
vi example.txt hay vim example.txt
Thoát
:q! hay Ctrl + Z
Thoát + Lưu
:wq! hay :x

.. Tất cả trạng thái của Vim thì hiện tại mình không quan tâm lắm, mình chỉ cần sửa (config) file cho tiện, cần những câu lệnh hay dùng để dễ dàng edit file thôi, có gì khó có ChatGPT lo

Ví dụ thực tế
Okay.. Ví dụ khi muốn edit 1 file thì mở file bằng
vi example.com
Sau đó nhấn vào 1 chữ bất kỳ để vào chế độ edit, sau đó dùng các phím mũi tên để đến dòng muốn edit và cứ edit thôi.
Edit xong thì nhấn Esc để thoát edit và nhấn :wq! hoặc :x để lưu và thoát :))

Best Practice
Các trường hợp hay gặp
Xóa 1 line: nhấn dd
Undo - redo:  u  -  (Ctrl + R)
Find: 
Move to dong thu n
Move to first line: 
Move to end line: $