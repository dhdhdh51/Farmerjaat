package com.kisanledger.notifications;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.work.Worker;
import androidx.work.WorkerParameters;

import com.kisanledger.R;

public class ReminderWorker extends Worker {

    public ReminderWorker(@NonNull Context context, @NonNull WorkerParameters workerParams) {
        super(context, workerParams);
    }

    @NonNull
    @Override
    public Result doWork() {
        NotificationManager manager = (NotificationManager) getApplicationContext().getSystemService(Context.NOTIFICATION_SERVICE);
        String channelId = "kisan_reminder";
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            manager.createNotificationChannel(new NotificationChannel(channelId, "Kisan Reminders", NotificationManager.IMPORTANCE_DEFAULT));
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(getApplicationContext(), channelId)
                .setSmallIcon(android.R.drawable.ic_popup_reminder)
                .setContentTitle("Kisan Ledger Reminder")
                .setContentText("Check watering/fertilizer schedule")
                .setPriority(NotificationCompat.PRIORITY_DEFAULT);
        manager.notify(1001, builder.build());
        return Result.success();
    }
}
