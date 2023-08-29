clear all
close all

% cria a imagem preta
im = uint8(zeros(256,256));

figure('name', 'original')
imshow(im)

% faz o degrade
for i = 1 : size(im,1)
    for j = 1 : size(im,2)
        im(i,j) = i-0;
    endfor
endfor

figure('name', 'degrade')
imshow(im)

% faz o degrade com moldura
for i = 1 : size(im,1)
    for j = 1 : size(im,2)
        if ((i > 8) && (i < 24)) ||  ((i > 232) && (i < 248))
            im(i,j) = 127;
            im(j,i) = 127;
        endif
    endfor
endfor

figure('name', 'degrade com moldura')
imshow(im)
