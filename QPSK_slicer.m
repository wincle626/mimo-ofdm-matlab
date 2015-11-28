function [x_sliced] = QPSK_slicer(x)
sq05=1/sqrt(2); jsq05=j*sq05;
for i=1:length(x)
if imag(x(i))>real(x(i))
if imag(x(i))>-real(x(i)), x_sliced(i)=jsq05;
else x_sliced(i)=-sq05;
end
else
if imag(x(i))>-real(x(i)), x_sliced(i)=sq05;
else x_sliced(i)=-jsq05;
end
end
end