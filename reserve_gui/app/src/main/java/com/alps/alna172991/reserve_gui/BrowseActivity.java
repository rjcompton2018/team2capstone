package com.alps.alna172991.reserve_gui;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.LinearLayout;

public class BrowseActivity extends AppCompatActivity {
    Context mContext;
    LinearLayout layoutMain;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_browse);
        mContext = this;
        layoutMain = findViewById(R.id.layoutMain);
    }
}
