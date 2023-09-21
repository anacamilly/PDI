% Ana Camilly Guedes de Araujo
% PDI - DESAFIO 3
clear all
close all

% Leia a imagem
im = imread('C:\Users\User\Downloads\fractal.png');


% Decomposição Bit a Bit
figure;
for i = 1:8
    bits = bitget(im, i); % Obtém o bits correspondente
    subplot(3, 3, i);
    imshow(bits, []);
    title([num2str(i) ' bit/bits']);
end



