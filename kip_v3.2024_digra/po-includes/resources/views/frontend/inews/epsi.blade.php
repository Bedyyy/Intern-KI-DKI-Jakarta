@extends(getTheme('layouts.app'))
@section('content')
    <section id="epsi">
        <div class="container">
            <h1>Penyelesaian Sengketa Informasi (PSI)</h1>

            <div class="row video-psi">
                <div class="col penjelasan">
                    <p><span>Sengketa Informasi Publik </span> adalah sengketa yang terjadi antara badan publik dan pengguna
                        informasi publik yang berkaitan dengan hak memperoleh dan menggunakan informasi berdasarkan
                        perundang-undangan. <span>Mekanisme sengketa </span> adalah proses terstruktur yang menangani
                        sengketa atau
                        keluhan yang timbul antara dua pihak atau lebih yang terlibat dalam hubungan bisnis, hukum, atau
                        kemasyarakatan . </p>
                </div>
                <div class="col">
                    <video muted controls>
                        <source src="{{ asset('po-content/uploads/kip.mp4') }}" type="video/mp4">
                    </video>
                </div>
            </div>

            <div class="pelayanan-ki">
                <h3>Mekanisme Pelayanan Komisi Informasi</h3>
            </div>

            <div class="faq">
                <button class="accordion">
                    Tata cara Memperoleh Informasi Publik
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p><span>Dalam memperoleh informasi publik terdapat 2 cara</span>, yaitu:</p>
                    <ul>
                        <li>1. Permohonan Penyelesaian Sengketa Informasi secara langsung;</li>
                        <li>2. Permohonan Penyelesaian Sengketa Informasi secara tertulis.</li>
                    </ul>
                    <p><span>1. Permohonan Penyelesaian Sengketa Informasi dapat diajukan secara langsung (datang
                            langsung)</span>,
                        dengan cara:</p>
                    <ul>
                        <li>1. Pemohon mengisi form Permohonan Penyelesaian Sengketa Informasi yang telah disediakan oleh
                            petugas;</li>
                        <li>2. Membawa surat permohonan informasi kepada Badan Publik dan tanda terimanya;</li>
                        <li>3. Membawa bukti jawaban permohonan informasi dari Badan Publik beserta tanda terimanya (jika
                            ada);</li>
                        <li>4. Membawa bukti pengajuan keberatan kepada Badan Publik dan tanda terimanya;</li>
                        <li>5. Membawa bukti jawaban keberatan kepada Badan Publik dan tanda terimanya (jika ada);</li>
                        <li>6. Membawa bukti identitas (jika individu maka dibuktikan dengan Kartu Tanda Penduduk dan jika
                            Badan Hukum dibuktikan dengan Anggaran Dasar yang telah mendapat pengesahan sebagai Badan Hukum
                            dan bila dikuasakan, dibuktikan dengan surat kuasa).</li>
                    </ul>
                    <p><span>2. Permohonan Penyelesaian Sengketa Informasi dapat diajukan secara tertulis (surat) dikirim
                            melalui
                            email atau surat tercatat dan secara online</span>, dengan cara:</p>
                    <ul>
                        <li>1. Mengirim Surat Permohonan Penyelesaian Sengketa Informasi yang ditunjukan kepada Ketua Komisi
                            Informasi dengan melampirkan bukti surat permohonan informasi kepada Badan Publik dan tanda
                            terimanya;</li>
                        <li>2. Bukti jawaban permohonan informasi dari Badan Publik beserta tanda terimanya (jika ada);</li>
                        <li>3. Bukti pengajuan keberatan kepada Badan Publik beserta tanda terimanya;</li>
                        <li>4. Bukti jawaban keberatan dari Badan Publik beserta tanda terimanya (jika ada);</li>
                        <li>5. Bukti identitas (jika individu maka dibuktikan dengan Kartu Tanda Penduduk dan jika Badan
                            Hukum dibuktikan dengan Anggaran Dasar yang telah mendapat pengesahan sebagai Badan Hukum dan
                            bila dikuasakan, dibuktikan dengan surat kuasa).</li>
                    </ul>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    Syarat Pendaftaran Sengketa Informasi
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p>Dalam mengajukan permohonan, syarat mengajukan Permohonan Penyelesaian Sengketa Informasi antara
                        lain:</p>
                    <p><span>Bukti identitas Pemohon yang sah</span>, yaitu:</p>
                    <ul>
                        <li>1. Fotocopy Kartu Tanda Penduduk, Paspor atau identitas lain sebagai warga negara Indonesia;
                            atau</li>
                        <li>2. Fotocopy Akta pendirian dan pengesahan badan hukum baik publik maupun privat dalam hal
                            Pemohon adalah badan hukum, surat keputusan pengangkatan kepengurusan, atau akta lain yang
                            dianggap sah;</li>
                        <li>3. Fotocopy surat kuasa, dalam hal Pemohon didampingi kuasa.</li>
                    </ul>
                    <p><span>Bukti telah mengajukan permohonan informasi kepada Badan Publik,</span>,
                        yakni</p>
                    <ul>
                        <li>1. Surat permohonan atau formulir permohonan atau tanda bukti permohonan informasi; dan/atau
                        </li>
                        <li>2. Surat pemberitahuan tertulis permohonan informasi.</li>
                    </ul>
                    <p><span>Bukti telah mengajukan keberatan kepada Badan Publik</span>, yakni:</p>
                    <ul>
                        <li>1. Surat tanggapan tertulis atas keberatan Pemohon oleh atasan PPID; atau</li>
                        <li>2. Surat pengajuan keberatan, dalam hal keberatan tidak direspon oleh atasan
                            PPID dalam waktu 30 (tigapuluh) hari sejak permohonan diajukan.</li>
                    </ul>
                    <p><span>Surat/Formulir Permohonan Penyelesaian Sengketa Informasi</span>, yakni:</p>
                    <ul>
                        <li>1. Memuat sekurang-kurangnya Identitas Pemohon;</li>
                        <li>2. Uraian mengenai alasan pengajuan permohonan;</li>
                        <li>3. Hal yang dimohon untuk diputus oleh Komisi Informasi.</li>
                    </ul>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    Tata Cara Pengajuan Keberatan Informasi
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p><span>Tata Cara Pengajuan Keberatan & Sengketa Informasi berdasarkan Undang-undang Nomor 14 tahun
                            2008 tentang keterbukaan informasi publik</span>, yaitu:</p>
                    <ul>
                        <li>1. Pelayanan Informasi Publik diusahakan selesai dalam <span>10 (sepuluh) hari kerja</span>.
                            Jika memang
                            dibutuhkan, PPID akan menyampaikan bahwa dibutuhkan waktu tambahan kepada pemohon informasi
                            <span>(7
                                hari tambahan)</span> dengan alasan secara tertulis;
                        </li>
                        <li>2. Apabila pemohon informasi tidak puas dengan informasi yang diterima, pemohon informasi dapat
                            mengajukan keberatan kepada Atasan PPID dalam jangka waktu selambat-lambatnya <span>30 (tiga
                                puluh)
                                hari</span> sejak permohonan informasi ditolak;</li>
                        <li>3. Atasan PPID kemudian wajib memberikan tanggapan tertulis atas keberatan yang diajukan pemohon
                            informasi selambat-lambatnya <span>30 (tiga puluh) hari</span> sejak keberatan dicatatkan;</li>
                        <li>4. Apabila pemohon informasi tidak puas dengan keputusan Atasan PPID, maka pemohon informasi
                            dapat mengajukan keberatan kepada Komisi Informasi, dalam jangka waktu <span>14 (empat belas)
                                hari</span>
                            kerja sejak diterimanya keputusan Atasan PPID diterima oleh pemohon informasi;</li>
                        <li>5. Apabila Pemohon Informasi tidak puas dengan keputusan Atasan PPID, maka pemohon informasi
                            dapat mengajukan keberatan kepada komisi informasi dalam jangka waktu <span>14 (empat belas)
                                hari</span>
                            kerja sejak diterimanya keputusan atasan PPID oleh Pemohon Informasi Publik;</li>
                        <li>6. Standar pengenaan biaya penggandaan dan pengiriman salinan informasi berupa hardfile
                            dibebankan kepada Pemohon.</li>
                    </ul>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    Tata Cara Permohonan Penyelesaian Sengketa Informasi
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p><span>Proses Penyelesaian Sengketa Informasi Publik di Komisi informasi dapat dilakukan dengan
                            langkah</span>, sebagai berikut:</p>
                    <ul>
                        <li>1. Pengajuan Sengketa Informasi Publik ke Komisi Informasi diajukan dalam waktu <span>14 (empat
                                belas)
                                hari</span> kerja setelah diterimanya tanggapan tertulis dari Atasan PPID yang tidak
                            memuaskan Pemohon
                            Informasi Publik;
                            (Jika pada tahap mediasi dihasilkan kesepakatan, maka hasil kesepakatan mediasi tersebut
                            ditetapkan oleh Putusan Komisi Informasi).</li>
                        <li>2. Dalam waktu <span>14 (empat belas) hari</span> kerja setelah diterimanya Permohonan
                            Penyelesaian Sengketa
                            Informasi Publik, Komisi Informasi harus mulai melakukan proses Penyelesaian Sengketa melalui
                            mediasi, paling lambat <span>100 (seratus) hari</span> kerja. <br>
                            # (Tidak Sepakat) Apabila upaya mediasi dinyatakan tidak berhasil secara tertulis oleh salah
                            satu pihak atau pihak yang bersengketa menarik diri dari perundingan, maka Komisi Informasi
                            melanjutkan proses Penyelesaian Sengketa melalui ajudikasi. <br>
                            # (Puas) Jika Pemohon Informasi puas atas keputusan Ajudikasi Komisi Informasi, sengketa
                            selesai. <br>
                            Apabila salah satu atau para pihak yang bersengketa secara tertulis menyatakan tidak menerima
                            putusan ajudikasi dari Komisi Informasi paling lambat <span>14 (empat belas) hari</span> kerja
                            setelah
                            diterimanya putusan tersebut, maka dapat mengajukan gugatan melalui pengadilan.</li>
                    </ul>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    Tahapan Persidangan Ajudikasi
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel">
                    <p><span>Berikut ini tahapan persidangan ajudikasi yang dilakukan oleh Komisi informasi</span>, yaitu:
                    </p>
                    <ul>
                        <li>1. Pemeriksaan Awal</li>
                        <li>2. Pembuktian</li>
                        <li>3. Pemeriksaan Setempat</li>
                        <li>4. Kesimpulan Para Pihak</li>
                        <li>5. Pembacaan Putusan</li>
                    </ul>
                </div>
            </div>
            <div class="faq">
                <button class="accordion">
                    Formulir Permohonan Penyelesaian Sengketa Informasi
                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                </button>
                <div class="pannel file">
                    <div class="row">
                        <div class="col download">
                            <a href="{{ asset('po-content/uploads/FORMULIR_PERMOHONAN_PENYELESAIAN_SENGKETA_INFORMASI.pdf') }}" download="FORMULIR_PERMOHONAN_PENYELESAIAN_SENGKETA_INFORMAS">
                                <i class="fa fa-download" aria-hidden="true"></i>
                                <p>Download</p>
                            </a>
                        </div>
                    </div>
                    <embed src="{{ asset('po-content/uploads/FORMULIR_PERMOHONAN_PENYELESAIAN_SENGKETA_INFORMASI.pdf') }}"
                        width="1000px" height="1000px" />
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
