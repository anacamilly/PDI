%Ana Camilly Guedes de Araujo

%Desafio opcional:
%Elabore um algoritmo que receba a quantidade de níveis de intensidade N e faça o mesmo
%processo de redução da resolução de intensidade.
%Dica: usar comandos condicionais é inviável para esta tarefa

clear all
close all

im2 = imread('C:\Users\User\Downloads\lena.png');
figure('name', 'imagem original');
imshow(im2);

n_niveis = input('Digite a quantidade de níveis de intensidade: ')

intensidade = 256 / n_niveis;

for i = 1 : size(im2,1)
  for j = 1 :size(im2,2)
    im2(i, j) = (im2(i, j) / intensidade) * intensidade; % Redução de intensidade
  endfor
endfor


figure('name', 'imagem com redução do nivel de intensidade');
imshow(im2);

