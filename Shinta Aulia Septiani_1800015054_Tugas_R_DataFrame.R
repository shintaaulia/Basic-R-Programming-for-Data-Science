#------------------------------R DataFrame-----------------------------#
#======================== Shinta Aulia Septiani =======================#
#------------Pusat Studi Data Sains(PSDS) Matematika UAD---------------#



##  Mengimpor Data Frame Pada R

# Mengimpor Data Frame pada Data Frame
df = read.csv("https://raw.githubusercontent.com/jokoeliyanto/Kelas-Dasar-Pejuang-Data-2.0/main/Super-Store-Dataset.csv")
# Memanggil Data Frame
df

##TUGAS
#1.Tentukan segment mana dengan profit tertinggi!

# Melihat segment apa saja yang ada
table(df$segment)

#Memilih masing-masing segmen
df_Consumer=df[df['segment']=='Consumer',]
df_Corporate=df[df['segment']=='Corporate',]
df_Home_Office=df[df['segment']=='Home Office',]

print(sum(df_Consumer$profit))
print(sum(df_Corporate$profit))
print(sum(df_Home_Office$profit))

#Jadi, Segment dengan profit tertinggi yaitu segment Consumer sebesar 128959.2


#2.Tentukan Category mana dengan sales terbanyak!

# Melihat category apa saja yang ada
table(df$category)

#Memilih masing-masing category
df_Office_Supplies=df[df['category']=='Office Supplies',]
df_Furniture=df[df['category']=='Furniture',]
df_Technology=df[df['category']=='Technology',]

print(sum(df_Office_Supplies$sales))
print(sum(df_Furniture$sales))
print(sum(df_Technology$sales))

#Jadi, category dengan sales terbanyak yaitu Category Technology dengan sales sebesar 755815.7


#3. Tentukan Sub-Category dengan quantity paling sedikit!

#melihat sub-category apa saja yang ada
table(df$sub_category)

#Memilih masing-masing sub-category
df_Binders=df[df['sub_category']=='Binders',]
df_Paper=df[df['sub_category']=='Paper',]
df_Furnishings=df[df['sub_category']=='Furnishings',]
df_Phones=df[df['sub_category']=='Phones',]
df_Storage=df[df['sub_category']=='Storage',]
df_Art=df[df['sub_category']=='Art',]
df_Accessories=df[df['sub_category']=='Accessories',]
df_Chairs=df[df['sub_category']=='Chairs',]
df_Appliances=df[df['sub_category']=='Appliances',]
df_Labels=df[df['sub_category']=='Labels',]
df_Tables=df[df['sub_category']=='Tables',]
df_Envelopes=df[df['sub_category']=='Envelopes',]
df_Bookcases=df[df['sub_category']=='Bookcases',]
df_Fasteners=df[df['sub_category']=='Fasteners',]
df_Supplies=df[df['sub_category']=='Supplies',]
df_Machines=df[df['sub_category']=='Machines',]
df_Copiers=df[df['sub_category']=='Copiers',]

print(sum(df_Binders$quantity))
print(sum(df_Paper$quantity))
print(sum(df_Furnishings$quantity))
print(sum(df_Phones$quantity))
print(sum(df_Storage$quantity))
print(sum(df_Art$quantity))
print(sum(df_Accessories$quantity))
print(sum(df_Chairs$quantity))
print(sum(df_Appliances$quantity))
print(sum(df_Labels$quantity))
print(sum(df_Tables$quantity))
print(sum(df_Envelopes$quantity))
print(sum(df_Bookcases$quantity))
print(sum(df_Fasteners$quantity))
print(sum(df_Supplies$quantity))
print(sum(df_Machines$quantity))
print(sum(df_Copiers$quantity))

#Jadi, sub-category dengan quantity paling sedikit yaitu Copiers sebesar 218

#4.Tentukan Bulan dengan Profit Tertinggi!!!
str(df)

class(df$order_date)

#mengubah type pada order_date menjadi date
df$order_date <- as.Date(df$order_date, "%m/%d/%Y")

#cek type data
str(df)

#menambahkan kolom bulan
df$month <- format(df$order_date, format = "%B")
df

#melihat isi pada kolom month
table(df$month)

#cek type data
str(df)

#Memilih masing-masing month
df_April=df[df['month']=='April',]
df_August=df[df['month']=='August',]
df_December=df[df['month']=='December',]
df_February=df[df['month']=='February',]
df_January=df[df['month']=='January',]
df_July=df[df['month']=='July',]
df_June=df[df['month']=='June',]
df_March=df[df['month']=='March',]
df_May=df[df['month']=='May',]
df_November=df[df['month']=='November',]
df_October=df[df['month']=='October',]
df_September=df[df['month']=='September',]

print(sum(df_April$profit))
print(sum(df_August$profit))
print(sum(df_December$profit))
print(sum(df_February$profit))
print(sum(df_January$profit))
print(sum(df_July$profit))
print(sum(df_June$profit))
print(sum(df_March$profit))
print(sum(df_May$profit))
print(sum(df_November$profit))
print(sum(df_October$profit))
print(sum(df_September$profit))

#Jadi, bulan dengan profit tertinggi adalah Desember
