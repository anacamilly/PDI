clear all
close all

%controle de intensidade

im = imread('C:\Users\aluno_23\Downloads\lena.png');
%im = rgb2gray(im);

figure('name', 'original')
imshow(im);

num = 6
fator = size(im,1)/num

for i = 1 : size(im,1)
  for j = 1 :size(im,2)
    for x = 1 : num
      if (i >= fator * (x-1)) && (i <= fator * x)
        im(i,j) = im(i,j) *(num/x);
      end
    endfor
  endfor
endfor

figure('name', 'resultado')
imshow(im);