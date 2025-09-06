@extends(getTheme('layouts.app'))
@section('content')
    <section id="FAQ">
        <div class="container">
            <div class="faq-header">
                <h1>Frequently Asked Question</h1>
                <p>Ini adalah daftar halaman pertanyaan dan jawaban yang sering ditanyakan. Sebelum Anda mengajukan
                    pertanyaan kepada Kami, alangkah baiknya jika membaca semua pertanyaan yang ada di halaman ini. Mungkin
                    hal yang ingin Anda tanyakan, jawabannya ada pada halaman ini.</p>
            </div>

            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">1. Apakah Ajudikasi itu?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Ajudikasi adalah proses penyelesaian sengketa informasi publik antara para pihak yang diputus
                        oleh Komisi Informasi.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">2. Bilamana Ajudikasi dilaksanakan?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Penyelesaian sengketa melalui ajudikasi dilakukan karena salah satu alasan berikut: Penolakan
                        atas permohonan informasi berdasarkan alasan pengecualian sebagaimana dimaksud dalam Pasal 17
                        Undang-Undang Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik; atau Pemohon informasi
                        publik TELAH MENEMPUH upaya penyelesaian sengketa melalui mediasi namun proses mediasi gagal
                        atau salah satu/para pihak menarik diri dari proses mediasi.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">3. Bagaimana batas kewenangan antara KI Pusat, KI Provinsi, dan KI Kabupaten/Kota?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Hal di atas dapat dijelaskan sebagai berikut :</p>
                    <ol>
                        <li>Komisi Informasi Pusat berwenang menyelesaikan Sengketa Informasi Publik yang menyangkut
                            Badan Publik Pusat;</li>
                        <li>Komisi Informasi Provinsi berwenang menyelesaikan Sengketa Informasi Publik yang
                            menyangkut Badan Publik tingkat provinsi;</li>
                        <li>Komisi Informasi Kabupaten/Kota berwenang menyelesaikan Sengketa Informasi Publik yang
                            menyangkut Badan Publik tingkat kabupaten/kota;</li>
                        <li>Dalam hal Komisi Informasi Kabupaten/Kota belum terbentuk, kewenangan menyelesaikan
                            Sengketa Informasi Publik yang menyangkut Badan Publik tingkat kabupaten/kota
                            dilaksanakan oleh Komisi Informasi Provinsi;</li>
                        <li>Dalam hal Komisi Informasi Provinsi belum terbentuk, kewenangan menyelesaikan Sengketa
                            Informasi Publik yang menyangkut Badan Publik tingkat provinsi dan kabupaten/kota
                            dilaksanakan oleh Komisi Informasi Pusat.</li>
                    </ol>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">4. Apakah Mediasi itu?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Mediasi adalah penyelesaian sengketa informasi publik antara para pihak melalui bantuan mediator
                        Komisi Informasi.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">5. Siapakah yang disebut Mediator?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Mediator adalah anggota komisioner di Komisi Informasi yang bertugas membantu para pihak dalam
                        proses perundingan guna mencari berbagai kemungkinan penyelesaian Sengketa Informasi Publik
                        tanpa menggunakan cara memutus atau memaksa sebuah penyelesaian.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">6. Apakah yang dimaksud dengan Kaukus?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Kaukus adalah pertemuan mediator dengan salah satu pihak tanpa dihadiri oleh pihak lainnya.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">7. Kapan mediasi dilaksanakan?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Penyelesaian sengketa melalui mediasi dilakukan karena salah satu atau beberapa alasan berikut:</p>
                    <ol>
                        <li>Tidak disediakannya informasi berkala yang wajib diumumkan Badan Publik sebagaimana
                            dimaksud dalam Pasal 9 Undang-Undang Nomor 14 Tahun 2008 tentang Keterbukaan Informasi
                            Publik dan Peraturan Komisi Informasi Nomor 1 Tahun 2010 tentang Standar Layanan
                            Informasi Publik;</li>
                        <li>Tidak ditanggapinya permohonan informasi;</li>
                        <li>Permohonan informasi ditanggapi tidak sebagaimana yang dimohonkan;</li>
                        <li>Tidak dipenuhinya permohonan informasi;</li>
                        <li>Pengenaan biaya yang tidak wajar; dan/atau</li>
                        <li>Penyampaian informasi yang melebihi jangka waktu berdasarkan ketentuan peraturan
                            undang-undangan yang berlaku.</li>
                    </ol>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">8. Apakah yang dimaksud Sengketa Informasi Publik?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Sengketa Informasi Publik adalah sengketa yang terjadi antara badan publik dan pengguna
                        informasi publik yang berkaitan dengan hak memperoleh dan menggunakan informasi berdasarkan
                        perundang-undangan.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">9. Apakah istilah MPP itu?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>MPP atau Majelis Pemeriksaan Pendahuluan adalah majelis yang terdiri dari komisioner Komisi
                        Informasi yang bertugas melakukan pemeriksaan pendahuluan.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">10. Bagaimana seseorang dapat mengajukan permohonan penyelesaian sengketa informasi publik?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Penyelesaian Sengketa Informasi Publik melalui Komisi Informasi dapat ditempuh apabila:</p>
                    <ol>
                        <li>Pemohon tidak puas terhadap tanggapan atas keberatan yang diberikan oleh atasan PPID;
                            atau</li>
                        <li>Pemohon tidak mendapatkan tanggapan atas keberatan yang telah diajukan kepada atasan
                            PPID dalam jangka waktu 30 (tiga puluh) hari kerja sejak keberatan diterima oleh atasan
                            PPID.</li>
                    </ol>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">11. Apakah yang dimaksud Informasi Publik?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Informasi Publik adalah informasi yang dihasilkan, disimpan, dikelola, dikirim, dan/atau
                        diterima oleh suatu Badan Publik yang berkaitan dengan penyelenggara dan penyelenggaraan negara
                        dan/atau penyelenggara dan penyelenggaraan Badan Publik lainnya yang sesuai dengan Undang-Undang
                        Nomor 14 Tahun 2008 tentang Keterbukaan Informasi Publik serta informasi lain yang berkaitan
                        dengan kepentingan publik.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">12. Siapa yang dimaksud dengan Badan Publik?</div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Badan Publik adalah lembaga eksekutif, legislatif, yudikatif, dan badan lain yang fungsi dan
                        tugas pokoknya berkaitan dengan penyelenggaraan negara, yang sebagian atau seluruh dananya
                        bersumber dari anggaran pendapatan dan belanja negara dan/atau anggaran pendapatan dan belanja
                        daerah, atau organisasi nonpemerintah sepanjang sebagian atau seluruh dananya bersumber dari
                        anggaran pendapatan dan belanja negara dan/atau anggaran pendapatan dan belanja daerah,
                        sumbangan masyarakat, dan/atau luar negeri.</p>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    <div class="pertanyaan">
                        13. Siapa yang boleh mengajukan permohonan informasi publik?
                    </div>
                    
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Yaitu warga negara dan/atau badan hukum Indonesia yang mengajukan permintaan informasi publik
                        sebagaimana diatur dalam Undang-Undang Nomor 14 Tahun 2008.</p>
                </div>
            </div>
        </div>
    </section>

    <script>
       var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function() {
                this.classList.toggle("active");
                this.parentElement.classList.toggle("active");

                var pannel = this.nextElementSibling;

                if (pannel.style.display === "block") {
                    pannel.style.display = "none";
                    pannel.style.transition = "1.5s";
                } else {
                    pannel.style.display = "block";
                    pannel.style.transition = "1.5s";
                }
            });
        }
    </script>
@endsection
