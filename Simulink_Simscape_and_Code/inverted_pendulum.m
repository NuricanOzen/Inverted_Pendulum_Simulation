% Ters Sarkaç (Inverted Pendulum) Parametre ve Başlatma Dosyası
clc; clear; close all;

%% 1. Fiziksel Sistem Parametreleri
M = 2.4;      % Arabanın kütlesi (kg)
m = 0.23;     % Sarkacın uç kütlesi (kg)
l = 0.36;     % Sarkacın mafsala uzaklığı (m)
g = 9.81;     % Yerçekimi ivmesi (m/s^2)

%% 2. Simülasyon Başlangıç Koşulları (Initial Conditions)
% Hocanın "küçük açıyla serbest bırakın" senaryosu için:
theta_0 = 0.05;  % Başlangıç açısı (radyan) -> Yaklaşık 2.8 dereceye denk gelir
x_0 = 0;         % Arabanın başlangıç konumu (m)
% Not: Başlangıç hızları (x_dot ve theta_dot) sıfır kabul edilecektir.

%% 3. Doğrusallaştırılmış State-Space (Durum-Uzay) Matrisleri
% İspatını yaptığımız matrisleri MATLAB'e formül olarak giriyoruz:

% A Matrisi (Sistem Dinamikleri)
A = [0, 1, 0,           0;
     0, 0, -(m*g)/M,    0;
     0, 0, 0,           1;
     0, 0, ((M+m)*g)/(M*l), 0];

% B Matrisi (Giriş Matrisi - İleride dışarıdan F kuvveti vermek istersek diye)
B = [0;
     1/M;
     0;
     -1/(M*l)];

% C Matrisi (Çıkış Matrisi - Neleri grafikte görmek istiyoruz?)
% 1. Satır: Arabanın konumu (x)
% 2. Satır: Sarkacın açısı (theta)
C = [1, 0, 0, 0;
     0, 0, 1, 0];

% D Matrisi (Doğrudan İletim Matrisi - Mekanik sistemlerde sıfırdır)
D = [0;
     0];

disp('Sistem parametreleri ve matrisler başarıyla Workspace''e yüklendi!');
disp('Artık Simulink modelini çalıştırabilirsiniz.');