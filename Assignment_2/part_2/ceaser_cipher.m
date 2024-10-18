function encryption = ceaser_cipher(message, shift)%message and shift logic
    shift_value = double(message)
    shift_value = shift_value + shift%shift
        for i = 1:lenght(shift_value)
            fprintf('starting')
            if shift_value > 122
                shift_value(i) = shift_value(i) - 25   %greater or less than value if statements 
                fprintf('%d', shift-value(i))
            end
            if shift_value < 97
                shift_value(i) = shift_value(i) + 25
            end
        end
fprintf('the encrypted message is "%s \n" ', shift_value)  %print final
            
