package com.kisanledger.database;

import android.content.Context;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;

import com.kisanledger.models.ExpenseRecord;
import com.kisanledger.models.FieldRecord;

@Database(entities = {FieldRecord.class, ExpenseRecord.class}, version = 1)
public abstract class AppDatabase extends RoomDatabase {

    private static volatile AppDatabase instance;

    public abstract KisanDao dao();

    public static AppDatabase getInstance(Context context) {
        if (instance == null) {
            synchronized (AppDatabase.class) {
                if (instance == null) {
                    instance = Room.databaseBuilder(context.getApplicationContext(), AppDatabase.class, "kisan_ledger.db").build();
                }
            }
        }
        return instance;
    }
}
