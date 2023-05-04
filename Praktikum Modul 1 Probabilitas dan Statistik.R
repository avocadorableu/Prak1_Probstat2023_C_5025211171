 " ~ Praktikum Modul 1 Probabilitas dan Statistik ~ "
 # Nama : Rani Listian Anggraeni
 # NRP  : 5025211171

 " - Nomor 1 - "
x = 0:n
n = 10
p = 0.488

#A
#Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.
dbinom(x, n, p)

#B
#Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?
x <- 3
dist_binom <- dbinom(x, n, p)
cat("Probabilitas tepat tiga bayi diantaranya laki-laki =", dist_binom)

#C
#Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?
x <- 2
dist_binom <- pbinom(2, n, p)
cat("Probabilitas kurang dari tiga bayi diantaranya laki-laki =", dist_binom)

#D
#Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?
x <- 2
dist_binom <- 1-pbinom(2, n, p)
cat("Probabilitas tiga atau lebih bayi diantaranya laki-laki =", dist_binom)

#E
#Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
nilai_har <- mean <- n * p
cat("Nilai harapan banyak bayi laki-laki =", nilai_har)

simp_baku <- sd <- sqrt(n * p * (1 - p))
cat("Simpangan baku banyak bayi laki-laki =", simp_baku)

#F
#Gambarkan histogram pendistribusian banyak bayi laki-laki.
set.seed(123)
x <- 1000
hist(rbinom(x, n, p), xlab = "Jumlah Bayi Laki-Laki", ylab = "Frekuensi",main = "Histogram Pendistribusian Banyak Bayi Laki-Laki")


" - Nomor 2 - "
#A
#Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai
lambd <- 1.8
x <- 0:15
distb <- dpois(x,lambd)
print(distb)
plot(type="l", distb, main="Distribusi Kematian Kanker Tulang", xlab="Jumlah Kematian", ylab="Probabilitas")

#B
#Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.
x <- 4
dist_pois <- dpois(x, lambda)
cat("Probabilitas ada 4 kematian akibat kanker tulang =", dist_pois)

#C
#Berapa peluang paling banyak 4 kematian akibat kanker tulang?
dist_pois <- ppois(4, lambd)
cat("Peluang Paling Banyak 4 Kematian Akibat Kangker Tulang: ", dist_pois)

#D
#Berapa peluang lebih dari 4 kematian akibat kanker tulang?
dist_pois <- 1-(probs)
cat("Peluang Kematian Lebih Dari 4 Akibat Kanker Tulang: ", dist_pois)

#E
#Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?
ilai_har <- mean <- lambda
cat("Nilai harapan banyak kematian akibat kanker tulang =", nilai_har)

std_dev <- sd <- sqrt(lambda)
cat("Standar deviasi banyak kematian akibat kanker tulang =", std_dev)

#F
#Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban
n <- 10
hist(rpois(n, lambd),ylab="Frekuensi", main="Histogram Distribusi Kematian Akibat Kanker Tulang")

#G
#Gunakan simulasi untuk memeriksa hasil sebelumnya.
set.seed(123321)
res <- rpois(n,lambd)
print(res)

#H
#Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda.Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.

" - Nomor 3 - "
#A
#Fungsi probabilitas dari distribusi Chi-Square.
x <- 3
v <- 10
prob_chisq <- dchisq(x, df = v)
prob_chisq

#B
#Histogram dari distribusi Chi-Square dengan 500 data acak.
set.seed(123)
data_chisq <- rchisq(n = 500, df = v)
hist(data_chisq, main = "Histogram Distribusi Chi-Square", xlab = "Nilai", ylab = "Frekuensi")

#C
#Nilai rataan (μ) dan varian (σ²) dari distribusi Chi-Square.
set.seed(123)
k <- 10
mean_chisq <- mean(rchisq(n = 100000, df = k))
var_chisq <- var(rchisq(n = 100000, df = k))
mean_chisq
var_chisq


" - Nomor 4 - "
#A
#Fungsi probabilitas dari distribusi Normal P(X1 ≤ x ≤ X2), hitung z-scorenya dan plot data bangkitan acaknya dalam bentuk grafik. Petunjuk (gunakan fungsi plot()).
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

#B
#Gambarkan histogram dari distribusi Normal dengan breaks 50
set.seed(123) 
hist(x, breaks = 50,  xlab = "Nilai", ylab = "Frekuensi", main = "Histogram Distribusi Normal dengan Breaks 50")

#C
#Nilai varian (σ²) dari hasil data bangkitan acak distribusi Normal.
varian <- var(data)
varian

" - Nomor 5 - "
#A
#Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat kebebasan?
x <- -2.34
df <- 6
prob <- pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari -2.34 dengan 6 derajat kebebasan =", prob)

#B
#Berapa probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat kebebasan?
df <- 6
x <- 1.34
prob <- 1 - pt(x, df)
cat("Probabilitas terjadinya suatu peristiwa acak X kurang dari 1.34 dengan 6 derajat kebebasan =", prob)

#C
#Berapa probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan?
df = 3
prob <- pt(-1.23, df) + (1-pt(1.23, df))
cat("Probabilitas terjadinya suatu peristiwa acak X dari -1.23 atau lebih besar dari 1.23 dengan 3 derajat kebebasan =", prob)

#D
#Berapa probabilitas terjadinya suatu peristiwa acak X berada di antara -0,94 dan 0,94 dengan 14 derajat kebebasan?
df = 14
prob <- pt(0.94, df) - pt(-0.94, df)
cat("Probabilitas terjadinya suatu peristiwa acak X dari -0.94 atau lebih besar dari 0.94 dengan 14 derajat kebebasan =", prob)

#E
#Berapa nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score tersebut?
df <- 5
area <- 0.0333
t_score <- qt(area, df, lower.tail = TRUE)
cat("Nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score =", t_score)

#F
#Berapa nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score tersebut?
df <- 25
area <- 0.125
t_score <- qt(area, df, lower.tail = FALSE)
cat("Nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score =", t_score)

#G
#Berapa nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif darinilai t-score tersebut?
df <- 11
area <- 0.75
t_score_left <- qt((1-area)/2, df, lower.tail = TRUE)
t_score_right <- qt((1-area)/2, df, lower.tail = FALSE)
c(t_score_left,t_score_right)

#H
#Berapa nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score tersebut?
df <- 23
area <- 0.0333
t_score <- abs(qt(area/2, df)) * c(-1, 1)
c(t_score)