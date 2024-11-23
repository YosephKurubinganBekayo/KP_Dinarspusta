const navbar = document.getElementsByTagName("nav")[0];
const toggler = document.querySelector(".navbar-toggler");

// Fungsi untuk mengubah warna navbar berdasarkan scroll
function handleScroll() {
  if (window.innerWidth > 992) {
    // Hanya berjalan di desktop
    if (window.scrollY >= 1) {
      navbar.classList.add("scrolled");
      navbar.classList.replace("navbar-dark", "navbar-light");
    } else {
      navbar.classList.remove("scrolled");
      navbar.classList.replace("navbar-light", "navbar-dark");
    }
  }
}

// Fungsi untuk mengubah warna navbar saat toggler ditekan
function handleToggle() {
  if (window.innerWidth <= 992) {
    // Hanya berjalan di mobile
    navbar.classList.toggle("scrolled");
    navbar.classList.toggle("navbar-light");
    navbar.classList.toggle("navbar-dark");
  }
}

// Event listener untuk scroll
window.addEventListener("scroll", handleScroll);

// Event listener untuk toggler klik
toggler.addEventListener("click", handleToggle);
// Pilih semua elemen dropdown di navbar
const dropdownElements = document.querySelectorAll(".navbar .dropdown");

// Fungsi untuk menentukan apakah perangkat dalam mode desktop atau mobile
function isDesktop() {
  return window.innerWidth >= 992; // 992px adalah breakpoint Bootstrap untuk layar desktop (lg ke atas)
}

// Tambahkan event listener untuk setiap elemen dropdown
dropdownElements.forEach((dropdown) => {
  const dropdownToggle = dropdown.querySelector(".dropdown-toggle");
  const bootstrapDropdown = new bootstrap.Dropdown(dropdownToggle);

  // Tampilkan dropdown saat kursor masuk ke elemen dropdown (hanya untuk desktop)
  dropdown.addEventListener("mouseenter", function () {
    if (isDesktop()) {
      bootstrapDropdown.show();
    }
  });

  // Sembunyikan dropdown saat kursor meninggalkan elemen dropdown (hanya untuk desktop)
  dropdown.addEventListener("mouseleave", function () {
    if (isDesktop()) {
      bootstrapDropdown.hide();
    }
  });

  // Tambahkan event listener untuk mencegah dropdown menutup saat di klik di desktop
  dropdownToggle.addEventListener("click", function (event) {
    if (isDesktop()) {
      event.preventDefault(); // Mencegah aksi default yang menutup dropdown
      if (dropdown.classList.contains("show")) {
        bootstrapDropdown.hide();
      } else {
        bootstrapDropdown.show();
      }
    }
  });
});

// Menambahkan event listener untuk perubahan ukuran layar
window.addEventListener("resize", function () {
  // Tutup dropdown jika ukuran layar berubah ke mode mobile
  if (!isDesktop()) {
    dropdownElements.forEach((dropdown) => {
      const dropdownMenu = dropdown.querySelector(".dropdown-menu");
      dropdownMenu.classList.remove("show");
    });
  }
});
