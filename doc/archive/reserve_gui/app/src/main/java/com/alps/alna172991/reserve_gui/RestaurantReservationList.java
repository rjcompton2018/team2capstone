package com.alps.alna172991.reserve_gui;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.LinearLayout;

public class RestaurantReservationList extends AppCompatActivity {

    Context mContext;
    LinearLayout layoutMain;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_restaurant_reservation_list);
        mContext = this;
        layoutMain = findViewById(R.id.layoutMain);
    }
}
