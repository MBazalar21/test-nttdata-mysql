package com.nttdata.testnttdatamysql;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders_items")
public class OrderItem {
    public OrderItem() {
        // Código de inicialización
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer idorderItem;
    private String product;
    private double price;
    private Integer quantity;
    

    public OrderItem(Integer idorderItem, String product, double price, Integer quantity, Order order) {
        this.idorderItem = idorderItem;
        this.product = product;
        this.price = price;
        this.quantity = quantity;
    }


    public Integer getIdorderItem() {
        return this.idorderItem;
    }

    public void setIdorderItem(Integer idorderItem) {
        this.idorderItem = idorderItem;
    }

    public String getProduct() {
        return this.product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public double getPrice() {
        return this.price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return this.quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }    
    
}
