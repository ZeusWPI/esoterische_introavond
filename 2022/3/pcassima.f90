program pcassima_3
    implicit none
    character(len=64) :: arg
    character :: c
    integer:: arg_index, char_index, char_value
    do arg_index = 1, command_argument_count()
        call get_command_argument(1, arg)
        do char_index=1, LEN_TRIM(arg)
            c = arg(char_index:char_index)
            char_value = iachar(c)
            IF ( 97 <= char_value .AND. char_value <= 122) THEN
                ! LOWERCASE
                char_value = char_value - 32
            ELSE IF ( 65 <= char_value .AND. char_value <= 90) THEN
                ! UPPERCASE
                char_value = char_value + 32
            END IF
            ! Print single character, no newline
            write(*, fmt="(a)", advance="no") CHAR(char_value)
        end do
        ! A blank print -> to create a newline
        print *
    end do
end program pcassima_3