function E_2 = LAP(I)
    xj = padarray(I,[1 1],'symmetric');
    EOL = conv2(xj,[1  4  1;4 -20 4;1  4  1]./6,'valid');
    E_2 = EOL.*EOL;
end