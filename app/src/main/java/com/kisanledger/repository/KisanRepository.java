package com.kisanledger.repository;

import android.app.Application;

import androidx.lifecycle.LiveData;

import com.kisanledger.database.AppDatabase;
import com.kisanledger.models.ExpenseRecord;
import com.kisanledger.models.FieldRecord;

import java.util.List;
import java.util.concurrent.Executors;

public class KisanRepository {
    private final AppDatabase db;

    public KisanRepository(Application app) {
        db = AppDatabase.getInstance(app);
    }

    public LiveData<List<FieldRecord>> fields() { return db.dao().getFields(); }
    public LiveData<List<ExpenseRecord>> expenses() { return db.dao().getExpenses(); }

    public void addField(FieldRecord field) { Executors.newSingleThreadExecutor().execute(() -> db.dao().insertField(field)); }
    public void addExpense(ExpenseRecord ex) { Executors.newSingleThreadExecutor().execute(() -> db.dao().insertExpense(ex)); }
}
