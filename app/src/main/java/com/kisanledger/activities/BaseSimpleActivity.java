package com.kisanledger.activities;

import android.os.Bundle;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.kisanledger.R;

public class BaseSimpleActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_simple_page);
        TextView tv = findViewById(R.id.pageTitle);
        tv.setText(getIntent().getStringExtra("title"));
    }
}
