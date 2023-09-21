% 5º Desafio - PDI
% Ana Camilly Guedes de Araujo

clear all;
close all;

% 1. Ler a imagem:
im = imread('C:\Users\User\Downloads\neuron.jpg');

% 2. Faça a imagem resultado 1:
% Subtraindo os canais R, G e B para criar a imagem de saída.
output1 = im(:,:,1) - im(:,:,2) - im(:,:,3);

% 3. Faça a imagem resultado 2:
% os pixels são brancos se os canais forem maiores ou menores que os valores, caso contrário, serão pretos
output2 = (im(:,:,1) > 128) & (im(:,:,2) < 128) & (im(:,:,3) < 128);

% 4. Mostre todas as imagens em uma nova janela:
figure;
subplot(1, 3, 1), imshow(im), title('Imagem de Entrada');
subplot(1, 3, 2), imshow(output1, []), title('Saída 1');
subplot(1, 3, 3), imshow(output2), title('Saída 2');
