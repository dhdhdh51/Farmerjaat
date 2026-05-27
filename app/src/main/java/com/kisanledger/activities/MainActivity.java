package com.kisanledger.activities;

import android.content.Intent;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.kisanledger.R;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        setCard(R.id.cardFields, FieldListActivity.class, "Field Management");
        setCard(R.id.cardExpense, ExpenseActivity.class, "Expense Tracker");
        setCard(R.id.cardFertilizer, FertilizerActivity.class, "Fertilizer Scheduler");
        setCard(R.id.cardWatering, WateringActivity.class, "Watering Tracker");
        setCard(R.id.cardReports, ReportsActivity.class, "Reports");

        FloatingActionButton fab = findViewById(R.id.fabDiary);
        fab.setOnClickListener(v -> open(DiaryActivity.class, "Farming Diary"));
    }

    private void setCard(int id, Class<?> cls, String title) {
        MaterialCardView card = findViewById(id);
        card.setOnClickListener(v -> open(cls, title));
    }

    private void open(Class<?> cls, String title) {
        Intent i = new Intent(this, cls);
        i.putExtra("title", title);
        startActivity(i);
    }
}
