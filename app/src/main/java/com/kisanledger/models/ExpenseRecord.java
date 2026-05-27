package com.kisanledger.models;

import androidx.room.Entity;
import androidx.room.PrimaryKey;

@Entity
public class ExpenseRecord {
    @PrimaryKey(autoGenerate = true)
    public int id;
    public String category;
    public double amount;
    public String date;
    public String notes;
}
