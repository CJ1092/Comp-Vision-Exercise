load sobel
load roberts
shakey = read_image('','shakey.150.gif');
show_image(shakey)
shakey_sobelX = conv2(shakey,sobelX,'same'); %applying the sobel masks
shakey_sobelY = conv2(shakey,sobelY,'same');
show_image(abs(shakey_sobelX)>25) %higher threshold provides better image
sobelmask = sqrt(shakey_sobelX.^2 + shakey_sobelY.^2); %combination of both sobel masks
show_image(sobelmask>25)
shakey_robertsA = conv2(shakey,robertsA,'same'); %applying roberts masks
shakey_robertsB = conv2(shakey,robertsB,'same');
show_image(abs(shakey_robertsB)>25)
robertsmask = abs(shakey_robertsA)+abs(shakey_robertsB); %combination of both roberts masks
show_image(robertsmask>25)
c = clip(shakey_sobelX,shakey_sobelY);
