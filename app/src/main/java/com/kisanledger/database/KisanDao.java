package com.kisanledger.database;

import androidx.lifecycle.LiveData;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;

import com.kisanledger.models.ExpenseRecord;
import com.kisanledger.models.FieldRecord;

import java.util.List;

@Dao
public interface KisanDao {
    @Insert
    void insertField(FieldRecord fieldRecord);

    @Insert
    void insertExpense(ExpenseRecord expenseRecord);

    @Query("SELECT * FROM FieldRecord")
    LiveData<List<FieldRecord>> getFields();

    @Query("SELECT * FROM ExpenseRecord")
    LiveData<List<ExpenseRecord>> getExpenses();
}
