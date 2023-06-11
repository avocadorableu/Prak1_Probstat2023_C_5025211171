# Prak1_Probstat2023_C_5025211171
Praktikum Modul 1 Probabilitas dan Statistik

# Soal 1
<blockquote>
  Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488.
  Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran,
</blockquote>

```r
x = 0:n
n = 10
p = 0.488
```

**A. Bagaimana pendistribusian banyak bayi laki-laki?**
```r
dbinom(x, n, p)
```
Distribusi Binomial. Diketahui n adalah jumlah percobaan sebanyak 10 dan p adalah probabilitas keberhasilannya adalah 0,44. Dalam penyelesaian ini digunakan fungsi **dbinom**. Fungsi dbinom adalah fungsi bawaan R untuk menghitung distribusi binomial. Hasil outputnya akan berupa vektor yang menunjukkan probabilitas masing-masing nilai dalam daftar k.

**B. Probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?**
```r
x <- 3
dist_binom <- dbinom(x, n, p)
cat("Probabilitas tepat tiga bayi diantaranya laki-laki =", dist_binom)
```
Probabilitas mendapatkan tepat 3 bayi laki-laki dari 10 kelahiran dengan probabilitas keberhasilan 0.488. prob_tepat_tiga adalah nama variabel yang akan menampung hasil probabilitas dari fungsi distribusi binomial tersebut.

**C. Probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin
laki-laki?**
```r
x <- 2
dist_binom <- pbinom(2, n, p)
cat("Probabilitas kurang dari tiga bayi diantaranya laki-laki =", dist_binom)
```
Fungsi pbinom adalah fungsi distribusi binomial kumulatif yang akan fungsi distribusi binomial kumulatif yang akan menghitung probabilitas mendapatkan kurang dari atau sama dengan 2 bayi laki-laki dari 10 kelahiran dengan probabilitas keberhasilan 0.488. 

**D. Probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin
laki-laki?**
```r
x <- 2
dist_binom <- 1-pbinom(2, n, p)
cat("Probabilitas tiga atau lebih bayi diantaranya laki-laki =", dist_binom)
```
Rumus tersebut adalah rumus yang menghitung probabilitas mendapatkan lebih dari 2 bayi laki-laki dari 10 kelahiran dengan probabilitas keberhasilan 0.488. Dalam rumus ini, 1 menunjukkan probabilitas komplementer atau probabilitas kejadian yang saling melengkapi dari kejadian yang ingin dicari, yaitu kejadian mendapatkan lebih dari 2 bayi laki-laki, sedangkan pbinom(2, n, p) adalah probabilitas kejadian kurang dari atau sama dengan 2 bayi laki-laki.

**E. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?**
```r
nilai_har <- mean <- n * p
cat("Nilai harapan banyak bayi laki-laki =", nilai_har)

simp_baku <- sd <- sqrt(n * p * (1 - p))
cat("Simpangan baku banyak bayi laki-laki =", simp_baku)
```
Rumus **mean_laki_laki** <- n * p adalah rumus untuk menghitung rata-rata (mean) dari distribusi binomial, yang dihitung dengan mengalikan nilai n dengan nilai probabilitas keberhasilan p. Hasil perhitungan disimpan dalam variabel mean_laki_laki. Selain itu digunakan rumus sd_laki_laki <- sqrt(n * p * (1 - p)). 

**F. Gambarkan histogram pendistribusian banyak bayi laki-laki.**
```r
set.seed(123)
x <- 1000
hist(rbinom(x, n, p), xlab = "Jumlah Bayi Laki-Laki", ylab = "Frekuensi",main = "Histogram Pendistribusian Banyak Bayi Laki-Laki")
```
* **kode R** untuk menghasilkan sampel acak dari distribusi binomial dengan parameter n dan p, dan menampilkan histogram dari sampel.
* Fungsi set.seed()
* **Fungsi set.seed()** menetapkan nilai awal untuk generator bilangan acak di dalam R, sehingga dengan nilai seed yang sama, pengguna akan mendapatkan hasil yang sama setiap kali kode tersebut dijalankan.
* Variabel n dan p harus ditetapkan sebelumnya untuk menentukan parameter distribusi binomial yang ingin dihasilkan. Dalam hal ini, kita menghasilkan 1000 sampel acak dengan parameter n dan p yang sudah ditentukan sebelumnya, dan menyimpannya dalam variabel bayi_laki.
* **Fungsi rbinom()** digunakan untuk menghasilkan sampel acak dari distribusi binomial dengan parameter n dan p yang ditentukan.
* **Fungsi hist()** digunakan untuk memvisualisasikan distribusi sampel acak yang dihasilkan dalam bentuk histogram. Parameter breaks digunakan untuk menentukan interval batas pada sumbu x, sedangkan parameter main dan xlab digunakan untuk memberikan judul dan label sumbu pada grafik histogram tersebut.


# Soal 2
<blockquote>
  Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrikban dalam 20 tahun ke depan adalah 1,8.
</blockquote>

**A. Bagaimana pendistribusian banyak kematian karena kanker tulang?**

**B. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa?**

**C. Berapa peluang paling banyak 4 kematian akibat kanker tulang?**

**D. Berapa peluang lebih dari 4 kematian akibat kanker tulang?**

**E. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?**

**F. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.**

**G. Gunakan simulasi untuk memeriksa hasil sebelumnya.**

**H. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.**


# Soal 3
<blockquote>
  Diketahui nilai x = 3 dan v = 10.
</blockquote>

**A. Fungsi probabilitas dari distribusi Chi-Square.**

**B. Histogram dari distribusi Chi-Square dengan 500 data acak.**

**C. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.**


# Soal 4
<blockquote>
  Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5.
</blockquote>

**A. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya
dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan
fungsi plot()).**

**B. Gambarkan histogram dari distribusi Normal dengan breaks 50**

**C. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.**


# Soal 5
<blockquote>
  Kerjakanlah menggunakan distribusi T-Student.
</blockquote>

**A. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan6 derajat kebebasan?**

**B. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6derajat kebebasan?**

**C. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 ataulebih besar dari 1,23 dengan 3 derajat kebebasan?**

**D. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94dan 0,94 dengan 14 derajat kebebasan?**

**E. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?**

**F. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?**

**G. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?**

**H. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,033 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?**
