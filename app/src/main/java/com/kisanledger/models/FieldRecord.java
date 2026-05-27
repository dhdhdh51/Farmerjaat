package com.kisanledger.models;

import androidx.room.Entity;
import androidx.room.PrimaryKey;

@Entity
public class FieldRecord {
    @PrimaryKey(autoGenerate = true)
    public int id;
    public String name;
    public String cropType;
    public String soilType;
    public double area;
    public String coordinates;
    public String notes;
}
