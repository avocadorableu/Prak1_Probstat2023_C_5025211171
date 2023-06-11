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
```r
lambd <- 1.8
x <- 0:15
distb <- dpois(x,lambd)
print(distb)
plot(type="l", distb, main="Distribusi Kematian Kanker Tulang", xlab="Jumlah Kematian", ylab="Probabilitas")
```


**B. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa?**
```r
x <- 4
dist_pois <- dpois(x, lambda)
cat("Probabilitas ada 4 kematian akibat kanker tulang =", dist_pois)
```


**C. Berapa peluang paling banyak 4 kematian akibat kanker tulang?**
```r
dist_pois <- ppois(4, lambd)
cat("Peluang Paling Banyak 4 Kematian Akibat Kangker Tulang: ", dist_pois)
```


**D. Berapa peluang lebih dari 4 kematian akibat kanker tulang?**
```r
dist_pois <- 1-(probs)
cat("Peluang Kematian Lebih Dari 4 Akibat Kanker Tulang: ", dist_pois)
```


**E. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?**
```r
ilai_har <- mean <- lambda
cat("Nilai harapan banyak kematian akibat kanker tulang =", nilai_har)

std_dev <- sd <- sqrt(lambda)
cat("Standar deviasi banyak kematian akibat kanker tulang =", std_dev)
```


**F. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.**
```r
n <- 10
hist(rpois(n, lambd),ylab="Frekuensi", main="Histogram Distribusi Kematian Akibat Kanker Tulang")
```


**G. Gunakan simulasi untuk memeriksa hasil sebelumnya.**
```r
set.seed(123321)
res <- rpois(n,lambd)
print(res)
```


**H. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.**
* Simulasi dan perhitungan menggunakan fungsi **ppois** seharusnya memiliki hasil yang cukup mendekati, tetapi tidak persis sama karena simulasi menghasilkan nilai acak yang berbeda di setiap iterasinya.
* Perhitungan ppois menghasilkan hasil yang lebih tepat karena memanfaatkan persamaan matematika yang presisi untuk menghitung peluang secara eksak,
* Simulasi hanya dapat memberikan estimasi yang semakin mendekati kebenaran seiring dengan semakin banyaknya iterasi yang dilakukan.
* simulasi juga memiliki kelebihan karena dapat digunakan untuk memeriksa asumsi distribusi, mendeteksi outlier, dan memvisualisasikan distribusi secara lebih intuitif.

# Soal 3
<blockquote>
  Diketahui nilai x = 3 dan v = 10.
</blockquote>

**A. Fungsi probabilitas dari distribusi Chi-Square.**
```r
x <- 3
v <- 10
prob_chisq <- dchisq(x, df = v)
prob_chisq
```
Dengan menggunakan Distribusi Chi-Square, dapat menggunakan fungsi yang telah tersedia dalam bahasa R, yaitu fungsi dchisq() yang berisi parameter x dan v. Didapatkan bahwa Probabilitas dari distribusi Chi-Square adalah 0.02353326

**B. Histogram dari distribusi Chi-Square dengan 500 data acak.**
```r

hist(data_chisq, main = "Histogram Distribusi Chi-Square", xlab = "Nilai", ylab = "Frekuensi")
```
Histogram dari Distribusi Chi-Square dapat dibuat menggunakan fungsi hist() dan rchisq() yang berisi parameter n, v.

**C. Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.**
```r
set.seed(123)
k <- 10
mean_chisq <- mean(rchisq(n = 100000, df = k))
var_chisq <- var(rchisq(n = 100000, df = k))
mean_chisq
var_chisq
```
* **Fungsi set.seed()** digunakan untuk menetapkan nilai awal untuk generator bilangan acak di dalam R, sehingga dengan nilai seed yang sama, pengguna akan mendapatkan hasil yang sama setiap kali kode tersebut dijalankan. Variabel k ditetapkan untuk menyimpan nilai derajat kebebasan yang akan digunakan untuk distribusi chi-square.
* **Fungsi rchisq()** digunakan untuk menghasilkan bilangan acak dari distribusi chi-square dengan derajat kebebasan yang ditentukan. Dalam hal ini, kita menghasilkan 100.000 bilangan acak dari distribusi chi-square dengan derajat kebebasan yang sudah ditentukan sebelumnya pada variabel k.
* **Fungsi mean() dan var()** digunakan untuk menghitung rata-rata dan variansi dari sampel acak yang dihasilkan oleh fungsi rchisq().

# Soal 4
<blockquote>
  Diketahui data bangkitan acak sebanyak 100 dengan mean = 45 dan sd = 5.
</blockquote>

**A. Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).**
```r
set.seed(123)
data <- rnorm(100, mean=45, sd=5)

x <- seq(25, 65, length=100)
pdf <- dnorm(x, mean=rata2, sd=stan_dev)

x1 <- 40
x2 <- 50
z1 <- (x1 - rata2) / stan_dev
z2 <- (x2 - rata2) / stan_dev
prob <- pnorm(z2) - pnorm(z1)
prob

```


**B. Gambarkan histogram dari distribusi Normal dengan breaks 50**
```r
set.seed(123) 
hist(x, breaks = 50,  xlab = "Nilai", ylab = "Frekuensi", main = "Histogram Distribusi Normal dengan Breaks 50")
```
* **Fungsi set.seed()** untuk menetapkan nilai awal untuk generator bilangan acak di dalam R, sehingga dengan nilai seed yang sama, pengguna akan mendapatkan hasil yang sama setiap kali kode tersebut dijalankan.
* Variabel data harus ditetapkan sebelumnya dan berisi data yang ingin divisualisasikan dalam bentuk histogram.
* **Fungsi hist()** untuk memvisualisasikan distribusi data dalam bentuk histogram. Parameter breaks digunakan untuk menentukan jumlah interval pada sumbu x, sedangkan parameter col digunakan untuk menentukan warna histogram dan parameter main dan xlab digunakan untuk memberikan judul dan label sumbu pada grafik histogram tersebut.
* **Fungsi hist()** akan menghasilkan histogram dari data yang sudah ditentukan sebelumnya dengan 50 interval pada sumbu x dan dengan warna hijau. Judul histogram adalah "Histogram Distribusi Normal" dan label sumbu x adalah "Nilai".

**C. Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.**
```r
varian <- var(data)
varian
```
* **Fungsi var()** untuk menghitung variansi dari data yang sudah ditentukan yakni data <- rnorm(100, mean = 45, sd = 5). 
* Hasil perhitungan variansi akan disimpan dalam variabel baru dengan nama varian. 
* Variansi adalah sebuah ukuran untuk mengukur seberapa jauh data tersebar dari rata-rata atau nilai tengahnya. 
* Semakin besar variansi, semakin besar keragaman data.

# Soal 5
<blockquote>
  Kerjakanlah menggunakan distribusi T-Student.
</blockquote>

**A. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan6 derajat kebebasan?**
```r
x <- -2.34
df <- 6
prob <- pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari -2.34 dengan 6 derajat kebebasan =", prob)
```
Derajat kebebasan menentukan bentuk distribusi, sedangkan nilai t-score menentukan posisi di dalam distribusi tersebut. Dalam kode ini, fungsi pt() digunakan untuk menghitung probabilitas terjadinya suatu peristiwa acak X yang memiliki t-score kurang dari -2,34 pada distribusi t dengan 6 derajat kebebasan

**B. Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6derajat kebebasan?**
```r
df <- 6
x <- 1.34
prob <- 1 - pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari 1.34 dengan 6 derajat kebebasan =", prob)
```
suatu peristiwa acak X memiliki nilai lebih besar dari 1.34 dengan 6 derajat kebebasan. Karena kita ingin mengetahui nilai probabilitas di atas 1.34, maka kita perlu mencari luasan di bawah kurva distribusi t-student mulai dari 1.34 ke arah positif tak terbatas. 

**C. Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 ataulebih besar dari 1,23 dengan 3 derajat kebebasan?**
```r
df = 3
prob <- pt(-1.23, df) + (1-pt(1.23, df))
cat("Probabilitas terjadinya suatu peristiwa acak X dari -1.23 atau lebih besar dari 1.23 dengan 3 derajat kebebasan =", prob)
```
probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 dengan 3 derajat kebebasan menggunakan fungsi pt() dengan argumen -1.23 dan df=3. Dapat dicari probabilitas terjadinya suatu peristiwa acak X lebih besar dari 1,23 dengan 3 derajat kebebasan dengan menggunakan 1 - pt() dengan argumen 1.23 dan df=3.

**D. Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94dan 0,94 dengan 14 derajat kebebasan?**
```r
df = 14
prob <- pt(0.94, df) - pt(-0.94, df)
cat("Probabilitas terjadinya suatu peristiwa acak X dari -0.94 atau lebih besar dari 0.94 dengan 14 derajat kebebasan =", prob)
```
* **Fungsi pt()** untuk menghitung probabilitas kumulatif dari distribusi t-Student. Argumen pertama adalah nilai t yang ingin dihitung probabilitasnya, dan argumen kedua adalah derajat kebebasan.
* **prob_d <- pt(0.94, df=14) - pt(-0.94, df=14)** akan menghitung probabilitas terjadinya peristiwa acak X di antara -0,94 dan 0,94 dengan 14 derajat kebebasan dan akan menetapkan hasilnya ke variabel prob_d.

**E. Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?**
```r
df <- 5
area <- 0.0333
t_score <- qt(area, df, lower.tail = TRUE)
cat("Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score =", t_score)
```
* **tscore_a <- qt(0.0333, df=5, lower.tail=TRUE)**  untuk menghitung skor t berdasarkan distribusi t-student dengan derajat kebebasan (degrees of freedom) sebesar 5 dan tingkat signifikansi sebesar 0.0333.

**F. Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?**
```r
df <- 25
area <- 0.125
t_score <- qt(area, df, lower.tail = FALSE)
cat("Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score =", t_score)
```
* **qt(0.125, df=25, lower.tail=FALSE)** fungsi untuk menghitung skor t dengan menggunakan nilai alpha atau signifikansi sebesar 0.125, dengan derajat kebebasan sebesar 25. Argumen lower.tail=FALSE menunjukkan bahwa skor t yang dihitung akan berada pada ekor distribusi t-Student di atas titik potong (cutoff) yang ditentukan.

**G. Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score tersebut?**
```r
df <- 11
area <- 0.75
t_score_left <- qt((1-area)/2, df, lower.tail = TRUE)
t_score_right <- qt((1-area)/2, df, lower.tail = FALSE)
c(t_score_left,t_score_right)
```
* Menghitung skor t positif dan negatif yang sesuai dengan area under the curve (luas area) tertentu dari distribusi t-Student dengan derajat kebebasan (degrees of freedom) sebesar 11.
* Pada pernyataan pertama, df <- 11 menentukan derajat kebebasan sebagai 11. Kemudian, upper_area <- 0.75 menentukan luas area di atas nilai t-score positif, yaitu sebesar 0.75 atau setara dengan tingkat kepercayaan 95%. Kemudian, lower_area <- (1 - upper_area)/2 menghitung luas area di bawah nilai t-score positif, yang kemudian digunakan untuk mencari nilai t-score negatif.
* nilai t-score positif dan negatif yang sesuai dengan luas area di atas dan di bawah t-score tersebut masing-masing disimpan dalam variabel **t_score_pos** dan **t_score_neg**.

**H. Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,033 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?**
```r
df <- 23
area <- 0.0333
t_score <- abs(qt(area/2, df)) * c(-1, 1)
c(t_score)
```
* Menghitung skor t positif dan negatif yang sesuai dengan area under the curve (luas area) tertentu dari distribusi t-Student dengan derajat kebebasan (degrees of freedom) sebesar 23.
* **t_pos <- qt(area/2, df, lower.tail = FALSE)** untuk mencari nilai t-score positif
* **t_neg <- qt(area/2, df)** untuk mencari nilai t-score negatif
