package com.kisanledger.viewmodel;

import android.app.Application;

import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;

import com.kisanledger.repository.KisanRepository;

public class DashboardViewModel extends AndroidViewModel {
    public final KisanRepository repository;

    public DashboardViewModel(@NonNull Application application) {
        super(application);
        repository = new KisanRepository(application);
    }
}
