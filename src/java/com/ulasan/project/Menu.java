package com.ulasan.project;

public class Menu {
    private String idMenu;
    private String namaMenu;
    private int harga;

    public Menu(String idMenu, String namaMenu, int harga) {
        this.idMenu = idMenu;
        this.namaMenu = namaMenu;
        this.harga = harga;
    }

    public String getIdMenu() {
        return idMenu;
    }

    public void setIdMenu(String idMenu) {
        this.idMenu = idMenu;
    }

    public String getNamaMenu() {
        return namaMenu;
    }

    public void setNamaMenu(String namaMenu) {
        this.namaMenu = namaMenu;
    }

    public int getHarga() {
        return harga;
    }

    public void setHarga(int harga) {
        this.harga = harga;
    }
}
