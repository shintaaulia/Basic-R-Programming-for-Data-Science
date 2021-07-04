#-----------Pejuang Data 2.0 PSDS Matematika UAD-------------#
# Nama      : Shinta Aulia Septiani
# NIM       : 1800015054
# Materi    : Vektor Pada R

#Tugas Bag. 3 Per. 2 Vektor Pada R

#1. Buatlah vektor "a" bilangan bulat dimulai dari angka 1 hingga 250
#cara 1 menggunakan fungsi c()
a <- c(1:250)

#cara 2 menggunakan fungsi seq()
a <- seq(from = 1, to = 250, by = 1)
#atau
a <- seq(1, 250, 1)

#2. Buatlah vektor "b" yang merupakan bilangan genap yang diambil dari vektor "a"
b <- a[a %% 2 == 0]


#3. Buatlah vektor "c" yang merupakan bilangan yang habis dibagi 6 dari vektor "b"
c <- b[b %% 6 == 0]
