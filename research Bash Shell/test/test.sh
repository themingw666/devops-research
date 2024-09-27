#!/bin/bash

# Nhập vào một số
echo "Nhập vào một số:"
read number

# Kiểm tra xem số đó có lớn hơn 10 không
if [ $number -gt 10 ]; then
    echo "Số lớn hơn 10"
elif [ $number -eq 10 ]; then
    echo "Số bằng 10"
else
    echo "Số nhỏ hơn 10"
fi

# Sử dụng vòng lặp for để tạo 10 file
for i in {1..10}; do
    echo "t$i" > "test$i.txt"  # Tạo file và ghi nội dung vào file
done

echo "Đã tạo 10 file thành công!"