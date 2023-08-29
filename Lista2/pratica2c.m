clear all
close all

im = imread('C:\Users\Aluno\Downloads\lena.png');

figure('name', 'original')
subplot(1,3,1);
imshow(im)
title('Lena');

fator = -255;
for j = 1 : size(im,2)
    for i = 1 : size(im,1)
        imDegrade(i,j) = im(i,j) + fator;
    endfor
    fator = fator + 1;
endfor

subplot(1,3,2);
imshow(imDegrade)
title('Lena degrade');

imPosterizada = im;
for i = 1 : size(imPosterizada,1)
    for j = 1 : size(imPosterizada,2)
        if imPosterizada(i,j) <=85
            imPosterizada(i,j) = 0;
        elseif imPosterizada(i,j) <= 170
            imPosterizada(i,j) = 127;
        else
            imPosterizada(i,j) = 255;
        endif
    endfor
endfor

subplot(1,3,3);
imshow(imPosterizada)
title('Lena posterizada');
