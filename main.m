while 1
    defaultanswer = {'',''};
    prompt = {'Enter a Decimal Number:', 'Target base:'};
    answer = inputdlg(prompt, 'Number Base Conversion', 1, defaultanswer);
    x = uint32(str2double(answer(1)));
    b = uint32(str2double(answer(2)));
    a = toBase(x, b);
    m = msgbox(a, 'Number in requested base');
    waitfor(m);
    choice = questdlg('Another number?', 'Number Base Conversion', 'Yes', 'No', 'No');
    if strcmp(choice, 'No')
        break;
    end
end
