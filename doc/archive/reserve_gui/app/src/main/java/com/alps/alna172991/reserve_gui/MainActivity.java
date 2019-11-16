package com.alps.alna172991.reserve_gui;

import android.Manifest;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Handler;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;

import cn.pedant.SweetAlert.SweetAlertDialog;

public class MainActivity extends AppCompatActivity implements View.OnClickListener, ShakeDetector.OnShakeListener{

    SettingsManager settingsManager;
    LinearLayout layoutBrowse, layoutReservations, layoutWaitTime, layoutSettings, layoutRestConfig, layoutRestSignup;
    private Context mContext;
    public final static int APP_PERMISSION = 2;
    private ShakeDetector mShakeDetector;
    private Sensor mAccelerometer;
    private SensorManager mSensorManager;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mContext = this;
        settingsManager = SettingsManager.getInstance();
        requestPermission();

        layoutBrowse = findViewById(R.id.layoutBrowse);
        layoutWaitTime = findViewById(R.id.layoutWaitTime);
        layoutSettings = findViewById(R.id.layoutSettings);
        layoutReservations = findViewById(R.id.layoutReservations);
        layoutRestConfig = findViewById(R.id.layoutRestConfig);
        layoutRestSignup = findViewById(R.id.layoutRestSignup);

        layoutBrowse.setOnClickListener(this);
        layoutWaitTime.setOnClickListener(this);
        layoutSettings.setOnClickListener(this);
        layoutReservations.setOnClickListener(this);
        layoutRestConfig.setOnClickListener(this);
        layoutRestSignup.setOnClickListener(this);

        settingsManager.updateSettings(this);
        mSensorManager = (SensorManager)getSystemService(Context.SENSOR_SERVICE);
        mAccelerometer = mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        mShakeDetector = new ShakeDetector();
        mShakeDetector.setOnShakeListener(this);
        mSensorManager.registerListener(mShakeDetector, mAccelerometer,	SensorManager.SENSOR_DELAY_UI);
        init();
    }

    private void init(){
        if(!settingsManager.isLoggedIn()){
            Intent loginIntent = new Intent(this, LoginActivity.class);
            startActivity(loginIntent);
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {

                    showSweetRestaurantDialog();
                }
            }, 1000);
        }
        else{
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {

                    showSweetRestaurantDialog();
                }
            }, 1000);
        }
    }
    @Override
    public void onShake() {
        settingsManager.login(mContext, "", "");
        init();
    }
    @Override
    protected void onResume(){
        super.onResume();
    }
    @Override
    public void onClick(View v) {
        Intent i;
        switch(v.getId()){
            case R.id.layoutBrowse:
                i = new Intent(this, BrowseActivity.class);
                startActivity(i);
                break;
            case R.id.layoutWaitTime:
                i = new Intent(this, RestaurantWaitTime.class);
                startActivity(i);
                break;
            case R.id.layoutSettings:
                i = new Intent(this, SettingsActivity.class);
                startActivity(i);
                break;
            case R.id.layoutRestConfig:
                i = new Intent(this, RestaurantConfig.class);
                startActivity(i);
                break;
            case R.id.layoutRestSignup:
                i = new Intent(this, RestaurantSignup.class);
                startActivity(i);
                break;
            case R.id.layoutReservations:
                i = new Intent(this, RestaurantReservationList.class);
                startActivity(i);
                break;
        }
    }
    private void requestPermission(){
        if(ContextCompat.checkSelfPermission(this,
                Manifest.permission.ACCESS_FINE_LOCATION)
                != PackageManager.PERMISSION_GRANTED || ContextCompat.checkSelfPermission(this,
                Manifest.permission.WRITE_EXTERNAL_STORAGE)
                != PackageManager.PERMISSION_GRANTED || ContextCompat.checkSelfPermission(this,
                Manifest.permission.RECORD_AUDIO)
                != PackageManager.PERMISSION_GRANTED){
            ActivityCompat.requestPermissions(this,
                    new String[]{Manifest.permission.ACCESS_FINE_LOCATION,
                            Manifest.permission.WRITE_EXTERNAL_STORAGE
                    }, APP_PERMISSION);
        }
    }
    private void showRestaurantDialog(){
        new AlertDialog.Builder(mContext)
                .setMessage("Fuel level low. Open Google Maps and search for nearby gas stations?")
                .setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Uri gmmIntentUri = Uri.parse("geo:0,0?q=" + Uri.encode("gas station"));
                        Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
                        mapIntent.setPackage("com.google.android.apps.maps");
                        startActivity(mapIntent);
                    }
                })
                .setNegativeButton("No", null)
                .show();
    }

    private void showSweetRestaurantDialog(){
        SweetAlertDialog mSweetBuilder = new SweetAlertDialog(this, SweetAlertDialog.CUSTOM_IMAGE_TYPE);
        mSweetBuilder.setCustomImage(mContext.getDrawable(R.drawable.status_unknown));
        mSweetBuilder.setTitleText("Would you like to search for nearby restaurants?");
        mSweetBuilder.setCancelButton("No thanks", new SweetAlertDialog.OnSweetClickListener() {
            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                sweetAlertDialog.dismiss();
            }
        });
        mSweetBuilder.setConfirmButton("Show me!", new SweetAlertDialog.OnSweetClickListener() {
            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                Uri gmmIntentUri = Uri.parse("geo:0,0?q=" + Uri.encode("restaurant"));
                Intent mapIntent = new Intent(Intent.ACTION_VIEW, gmmIntentUri);
                mapIntent.setPackage("com.google.android.apps.maps");
                startActivity(mapIntent);
                sweetAlertDialog.dismiss();
            }
        });
        mSweetBuilder.show();
    }
}
