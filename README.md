# Kuis Mobile Programming
Repository ini berisi implementasi tugas UI/UX Flutter untuk mata kuliah **Mobile Programming**.  
Setiap soal dikerjakan menggunakan pendekatan desain **modern–elegant**, konsisten, dan responsif.

---

## 📌 **Daftar Soal & Link File**
Berikut adalah link langsung menuju implementasi masing-masing soal:

## **Menu Utama**
<img src="https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/preview/menu.png" width="350"/>

---

## **Soal 1 — Grid Produk**
<img src="https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/preview/gridProduk.png" width="350"/>

**File kode:**  
https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/lib/screens/soal1_page.dart

---

## **Soal 2 — Profil Mahasiswa**
<img src="https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/preview/profile.png" width="350"/>

**File kode:**  
https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/lib/screens/soal2_page.dart

---

## **Soal 3 — Daftar Kontak (Light Mode & Dark Mode)**
<img src="https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/preview/kontakLight.png" width="350"/>
<img src="https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/preview/kontakDark.png" width="350"/>

**File kode:**  
https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/lib/screens/soal3_page.dart

---

## **Soal 4 — Dashboard**
<img src="https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/preview/dashboard.png" width="350"/>

**File kode:**  
https://github.com/zidankusumafirdaus/Kuis-MobileProgramming/blob/main/lib/screens/soal4_page.dart

---

## **Soal 5 — Evaluasi UX Desain**

### **1) Nilai UX terbaik dari desain**

#### ✅ **Kejelasan hirarki visual**
Pembagian area **kategori (atas)**, **informasi (tengah)**, dan **aktivitas (bawah)** membuat pengguna langsung memahami struktur halaman dan menemukan informasi dengan cepat.

#### ✅ **Keterbacaan & kontras**
Teks memakai **grayscale dengan kontras baik** di atas latar putih/abu muda sehingga konten tetap terbaca jelas tanpa menjadi melelahkan.

#### ✅ **Feedback & affordance**
Interaksi kartu (tap) memberikan umpan balik melalui:
- Ripple effect  
- SnackBar  
Hal ini membuat interaksi terasa responsif dan dapat diprediksi.

#### ✅ **Konsistensi visual**
Penggunaan:
- radius seragam  
- warna konsisten  
- spacing teratur  
menciptakan tampilan profesional dan mengurangi beban kognitif.

#### ✅ **Responsif / scroll natural**
Penggunaan `Expanded`, `GridView.builder`, dan `ListView.builder`  
membuat layout tetap seimbang di berbagai ukuran layar.

---

### **2) Bagian yang bisa ditingkatkan (beserta cara memperbaikinya)**

#### 🔹 **Kontras pada elemen penting**
**Masalah:** Semua menggunakan grayscale sehingga elemen penting kurang menonjol.  
**Perbaikan:**  
- Tambahkan **warna aksen lembut** untuk notifikasi/CTA  
- Gunakan rasio kontras minimum **4.5 : 1** untuk teks body

---

#### 🔹 **Touch target & spacing**
**Masalah:** Tombol/ikon pada layar kecil bisa terasa sempit.  
**Perbaikan:**  
- Gunakan ukuran minimal **48×48 dp**  
- Tambahkan padding pada grid item & tombol aksi

---

#### 🔹 **Aksesibilitas (a11y)**
**Masalah:** Belum ada semantics/label screen reader.  
**Perbaikan:**  
- Tambahkan `Semantics`, `Tooltip`  
- Perhatikan `MediaQuery.textScaleFactor`  
- Uji dengan TalkBack/VoiceOver

---

#### 🔹 **Kinerja & loading state**
**Masalah:** Jika list besar, performa bisa menurun.  
**Perbaikan:**  
- Tetap gunakan builder widgets (sudah dilakukan)  
- Tambahkan paging / infinite scroll  
- Tambahkan **shimmer loading**

---

#### 🔹 **Feedback yang lebih kaya**
**Masalah:** Semua aksi hanya memunculkan SnackBar.  
**Perbaikan:**  
- Gunakan **dialog**, **modal bottom sheet**, atau **toast** untuk aksi penting  
- Gunakan animasi subtle untuk transisi konten

---

#### 🔹 **Adaptasi tablet / landscape**
**Masalah:** Grid belum dioptimalkan untuk layar besar.  
**Perbaikan:**  
- Gunakan breakpoint:  
  - `crossAxisCount = 3–4` untuk width > 800px  
- Gunakan `LayoutBuilder` untuk responsivitas penuh

---

#### 🔹 **Micro-interactions & motion**
**Masalah:** Desain masih statis.  
**Perbaikan:**  
- Tambahkan `AnimatedContainer`, `AnimatedOpacity`, atau `ScaleTransition`  
- Gunakan Hero animation saat berpindah halaman

---

### **3) Prinsip Material Design yang diterapkan**

✔ **Elevation & Surface** — Card menggunakan elevation untuk membangun hierarki  
✔ **Shape** — Radius besar, konsisten pada seluruh komponen  
✔ **Color & Contrast** — Grayscale minimalis dengan kontras cukup  
✔ **Typography** — Variasi font weight untuk membuat hirarki  
✔ **Motion** — Ripple effect dan animasi kecil untuk state change  
✔ **Responsive Layout** — GridView + ListView + Expanded membuat layout adaptif  
✔ **Accessibility-aware** — Spacing & ukuran font mengikuti pedoman MD  
