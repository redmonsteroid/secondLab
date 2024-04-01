section .data
    nums dw 1033, 1230, 3211
    result db 0

section .text
    global _start

_start:
    ; Инициализируем результат нулем
    mov al, 0
    mov [result], al

    ; Проходимся по каждому элементу в nums
    mov ecx, 3
    mov esi, 0  ; Переменная индекса
loop_start:
    cmp esi, ecx
    jge loop_end

    ; Получаем текущий элемент
    movzx eax, word [nums + esi * 2]

    ; Проверяем, больше ли элемент или равен 100
    cmp eax, 100
    jl skip_count

    ; Сохраняем eax в другом регистре перед подсчетом цифр
    mov bx, ax

    ; Подсчитываем количество цифр в элементе
    mov eax, ebx
    xor ecx, ecx  ; Обнуляем счетчик цифр
count_digits:
    mov edx, 0   ; Обнуляем остаток
    mov ebx, 10  ; Делитель
    div ebx      ; Делим на 10
    inc ecx      ; Увеличиваем счетчик цифр
    test eax, eax
    jnz count_digits

    ; Проверяем, является ли количество нечетным
    test ecx, 1
    jz skip_count

    ; Увеличиваем результат
    inc byte [result]

skip_count:
    ; Восстанавливаем eax
    mov eax, ebx
    inc esi
    jmp loop_start

loop_end:
    ; Выводим результат
    movzx eax, byte [result]
    add eax, '0'
    mov [buf], al
    mov eax, 4       ; sys_write
    mov ebx, 1       ; stdout
    mov ecx, buf     ; сообщение для записи
    mov edx, 1       ; длина сообщения
    int 0x80

    ; Завершаем программу
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .bss
    buf resb 1   ; Буфер для вывода
