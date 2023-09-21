clear all
close all

im = imread('C:\Users\Aluno\Downloads\lena.png');

figure('name', 'original')
subplot(1,3,1);
imshow(im)
title('Lena');

tic
for i = 1 : size(im,1)
    for j = 1 : size(im,2)
        imClara(i,j) = uint8(im(i,j) * 1.8);
        imEscura(i,j) = uint8(im(i,j) * 0.2);
    endfor
endfor
toc

tic
imClara(:,:) = uint8(im(:,:) * 1.8);
toc

subplot(1,3,2);
imshow(imClara)
title('Lena Clara');

subplot(1,3,3);
imshow(imEscura)
title('Lena Escura');
