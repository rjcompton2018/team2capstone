package com.alps.alna172991.reserve_gui;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.LinearLayout;

public class RestaurantWaitTime extends AppCompatActivity {

    Context mContext;
    LinearLayout layoutMain;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_restaurant_wait_time);
        mContext = this;
        layoutMain = findViewById(R.id.layoutMain);
    }
}