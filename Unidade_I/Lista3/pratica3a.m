pkg load image;

clear all;
close all;

im = imread('C:\Users\Aluno\Downloads\moon.png');

figure;
imshow(im);

figure;
imhist(im);
h = imhist(im);

% imBinaria = im < 120
for i=1:size(im,1)
    for j=1:size(im,2)
        imBinaria(i,j) = im(i,j)<120;
    end
end

figure;
imshow(imBinaria);

for i=1:size(im,1)
    for j=1:size(im,2)
        imNegativa(i,j) = 255-im(i,j);
    end
end

imNova = imNegativa;
for i=1:size(im,1)
    for j=1:size(im,2)
        if imBinaria(i,j)
            imNova(i,j) = imNegativa(i,j)^1.3;
        end
    end
end

figure;
imshow(imNova);
