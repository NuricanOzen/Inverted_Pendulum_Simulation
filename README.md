
>  🇬🇧 English *As bugs are identified, they will be fixed, and the project will be continuously improved.*

>  🇹🇷 Türkçe *Proje hataları fark edildikçe düzeltilecek ve proje sürekli olarak daha iyi hale getirilecektir.*

# Ters Sarkaç (Inverted Pendulum) - Analitik Analiz ve Simülasyon


**Language:** [English](#english) | [Türkçe](#türkçe)
<a id="english"></a>
## 🇬🇧 English

This project is a group effort developed to analytically model, simulate, and verify the uncontrolled free-fall behavior of an inverted pendulum-cart mechanism.

📌 **You can access the final presentation containing detailed analysis, mathematical models, and comparative graphs [Here (PDF format)](#).**

## 🛠️ Technologies Used
* **MATLAB & Simulink:** Block diagram simulation of both linear (State-Space) and non-linear mathematical equations of motion.
* **Simscape:** Simulation of the non-linear physical mechanism.

## 🎯 Project Summary & Methodology
1. **Mathematical Modeling:** The non-linear equations of motion of the system were derived and then linearized using the small-angle approximation `sin(θ) ≈ θ`, `cos(θ) ≈ 1`, `(dθ/dt)²v ≈ 0`.
3. **State-Space Representation:** The LTI (Linear Time-Invariant) model of the system was constructed in matrix format based on the linearized equations.
4. **Comparative Analysis:** By varying parameters such as mass (m, M), pendulum length (l), and initial angle (θ₀), the system's responses were analyzed. The linear and non-linear mathematical models in Simulink were extensively compared with the physical mechanism simulated in Simscape.

## 💡 Conclusion
The linear Simulink model mathematically yields accurate results only within a strict "small-angle" boundary (θ₀ < 15°). In contrast, both the non-linear Simulink model and the Simscape model accurately simulated the physical free-fall behavior without any angle limitations.

---

<a id="türkçe"></a>
## 🇹🇷 Türkçe

Bu proje, bir sarkaç-araba (inverted pendulum) mekanizmasının kontrolörsüz serbest düşüş davranışını analitik olarak modellemek ve doğrulamak amacıyla geliştirilmiş bir grup projesidir.

📌 **Projenin detaylı analizlerini, matematiksel modellerini ve grafiklerini içeren final sunumuna [Buradan (PDF formatında)](#) ulaşabilirsiniz.**

## 🛠️ Kullanılan Teknolojiler
* **MATLAB & Simulink:** Sistemin hem doğrusal (Linear - State Space) hem de doğrusal olmayan (Non-linear) matematiksel hareket denklemlerinin blok diyagramlarla simülasyonu.
* **Simscape:** Doğrusal olmayan (Non-linear) fiziksel mekanizma simülasyonu.

## 🎯 Proje Özeti ve Yapılanlar
1. **Matematiksel Modelleme:** Sistemin doğrusal olmayan hareket denklemleri türetilmiş ve küçük açı yaklaşımı kullanılarak `sin(θ) ≈ θ`, `cos(θ) ≈ 1`, `(dθ/dt)² ≈ 0` doğrusallaştırılmıştır.
2. **State-Space (Durum-Uzay):** Doğrusal denklemler üzerinden sistemin LTI (Linear Time-Invariant) modeli matris formatında oluşturulmuştur.
3. **Karşılaştırmalı Analiz:** Kütle (m, M), uzunluk (l) ve başlangıç açısı (θ₀) gibi parametreler değiştirilerek, sistemin Simulink'teki doğrusal ve doğrusal olmayan matematiksel modelleri ile Simscape'teki fiziksel modeli karşılaştırılmıştır.

## 💡 Sonuç
Doğrusal model yalnızca dar bir "küçük açı" sınırı içinde (θ₀ < 15°) matematiksel olarak doğru sonuç verirken; Simulink'teki doğrusal olmayan model ve Simscape modeli, herhangi bir açı kısıtlaması olmadan fiziksel serbest düşüşü gerçeğe uygun şekilde simüle etmiştir.
