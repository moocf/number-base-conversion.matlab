function a = toBase(x, b)
  i = 1;
  s = uint32(zeros(1,256));
  while x > 0
    d = mod(x, b);
    s(1, i) = toDigit(d);
    x = (x - d)/b;
    i = i + 1;
  end
  i = max([i-1, 1]);
  a = reverse(char(s(1, 1:i)));
end
