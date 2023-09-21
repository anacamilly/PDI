clear all
close all

%controle de intensidade

im = imread('C:\Users\aluno_23\Downloads\lena.png');

figure('name', 'original')
imshow(im);

size(im)

% Lena Estorada em 120
%for i = 1 : size(im,1)
%  for j = 1 :size(im,2)
%    im(i,j) =  im(i,j) + 120;
%  endfor
%endfor

%figure('name', 'SAIDA')
%imshow(im);


% for simplificado
% im(:,:) = im(:,:) + valor




% Lena estourada no valor digitado
valor = input('Digite um valor: ');

%tic toc = exibe o tempo de processamento
tic
for i = 1 : size(im,1)
  for j = 1 :size(im,2)
    im(i,j) =  im(i,j) + valor;
  endfor
endfor
toc

figure('name', 'SAIDA2')
imshow(im);
