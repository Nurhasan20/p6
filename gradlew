package com.example.fakultas

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import kotlinx.android.synthetic.main.recycler.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val testData = createdata()
        RecyclerView.layoutManager = LinearLayoutManager(this)
        RecyclerView.setHasFixedSize(true)
        RecyclerView.adapter = adapter(testData, { fakItem: data-> ItemClicked(fakItem)})
    }

    private fun ItemClicked(fakItem: data) {
        val showIntent = Intent (this, detail::class.java)
        showIntent.putExtra(Intent.EXTRA_TEXT, fakItem.namaFakul.toString())
        showIntent.putExtra(Intent.EXTRA_TEMPLATE, fakItem.desFakul.toString())
        showIntent.putExtra(Intent.EXTRA_REFERRER, fakItem.fotoFakul.toString())
        startActivity(showIntent)
    }

    private fun createdata() : List<data> {
        val partList = ArrayList<data>()
        partList.add(data ("Fakultas Ilmu Komputer","Fakultas Ilmu Komputer merupakan salah satu dari 7 Fakultas di UPN \"Veteran\" Jawa Timur. Yang teridiri dari program studi:\n\n" +
                "\t1. Prodi S1 Teknik Informatika\n" +
                "\t2. Prodi S1 Sistem Informasi\n" +
                "\t3. Prodi S1 Data Science", R.drawable.upn))

        partList.add(data("Fakultas Teknik", "Fakultas Teknik merupakan salah satu dari 7 Fakultas di UPN \"Veteran\" Jawa Timur. Yang teridiri dari program studi:\n\n" +
                "\t1. Prodi S1 Teknik Kimia\n" +
                "\t2. Prodi S1 Teknik Industri\n" +
                "\t3. Prodi S1 Teknik Sipil\n" +
                "\t4. Prodi S1 Teknik Lingkungan\n" +
                "\t5. Prodi S1 Teknologi Pangan\n" +
                "\t6. Prodi S1 Teknik Mesin", R.drawable.upn))

        partList.add(data("Fakultas Ekonomi Dan Bisnis", "Fakultas Ekonomi Dan Bisnis merupakan salah satu dari 7 Fakultas di UPN \"Veteran\" Jawa Timur. Yang teridiri dari program studi:\n\n" +
                " \t1. Prodi S1 Ekonomi Pembangunan\n" +
                "\t2. Prodi S1 Akuntansi\n" +
                "\t3. Prodi S1 Manajemen", R.drawable.upn))

        partList.add(data("Fakultas Pertanian", "Fakultas Pertanian merupakan salah satu dari 7 Fakultas di UPN \"Veteran\" Jawa Timur. Yang teridiri dari program studi:\n\n" +
                "\t1. Prodi S1 Agroteknologi\n" +
                "\t2. Prodi S1 Agribisnis", R.drawable.upn))

        partList.add(data("Nur Hasan A.",
            "TTL\t\t\t\t\t\t\t\t: Surabaya, 20 April 2000\n" +
                    "ALAMAT\t\t\t\t\t: Jl. Sedati Agung, 16 Sidoarjo\n" +
                    "NO.HP\t\t\t\t\t\t\t: 0896-1228-7521\n" +
                    "E-MAIL\t\t\t\t\t\t: Nurhasanassobari20@gmail.com\n" +
                    "E-MAIL\t\t\t\t\t\t: www.github.com/20nurhasan\n\n" +
                    "RIWAYAT PENDIDIKAN\t:\n"+
                    "\t\t\tSDN Rangkah 6 Surabaya\n" +
                    "\t\t\tSMPN 9 Surabaya\n" +
                    "\t\t\tSMA Muhammadiyah 7 Surabaya\n\n" +
                    "PENGHARGAAN\t\t:", R.drawable.profile_icon))
        return partList
    }
        }
    }

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        