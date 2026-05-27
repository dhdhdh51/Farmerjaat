package com.kisanledger.utils;

import android.content.Context;

import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;

import com.kisanledger.notifications.ReminderWorker;

import java.util.concurrent.TimeUnit;

public class ReminderUtils {
    public static void scheduleReminder(Context context, int days) {
        OneTimeWorkRequest request = new OneTimeWorkRequest.Builder(ReminderWorker.class)
                .setInitialDelay(days, TimeUnit.DAYS)
                .build();
        WorkManager.getInstance(context).enqueue(request);
    }
}
