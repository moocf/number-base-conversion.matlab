function a = toDigit(x)
  if x < 10
    a = '0' + x;
  else
    a = 'A' + (x-10);
  end
end
