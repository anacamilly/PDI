% Ana Camilly Guedes de Araujo

% PDI - DESAFIO 4
% 1. Ler as duas imagens de entrada:
% Leia as imagens “mask_2.tif” e “mask_3.tif”, tenha certeza que as imagens sejam do
% tipo “logic”, caso elas estejam em uint8 será necessário fazer a limiarização.
% 2. Gere a imagem de saída:
% Usando apenas operações lógicas, gere a imagem de saída.
% 3. Exibir os resultados:
% Mostre todas as imagens em uma nova janela.

clear all
close all


% 1. Ler as duas imagens de entrada:  “mask_2.tif” e “mask_3.tif”
im1 = imread('C:\Users\User\Downloads\images\mask_2.tif');
im2 = imread('C:\Users\User\Downloads\images\mask_3.tif');

% 1.1 Verificar se as imagens são do tipo "logic"
if ~islogical(im1)
    limite = 126;
    im1 = im1 > limite;
end

if ~islogical(im2)
    limite = 126;
    im2 = im2 > limite;
end

% 2. Gere a imagem de saída:  Usando apenas operações lógicas
imSaida = im1 & im2;

% 3. Exibir os resultados:
figure;
subplot(1, 3, 1);
imshow(im1);
title('Entrada 1');

subplot(1, 3, 2);
imshow(im2);
title('Entrada 2');

subplot(1, 3, 3);
imshow(imSaida);
title('Saída');

