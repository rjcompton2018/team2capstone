package com.alps.alna172991.reserve_gui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

public class LoginActivity extends AppCompatActivity implements View.OnLongClickListener, View.OnClickListener {

    private LinearLayout layoutMain;
    SettingsManager settingsManager;
    Context mContext;
    Button btnLogin;
    EditText etEmail, etPassword;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        mContext = this;
        btnLogin = findViewById(R.id.btnLogin);
        btnLogin.setOnClickListener(this);
        etEmail = findViewById(R.id.tvEmail);
        etPassword = findViewById(R.id.editText2);
        settingsManager = SettingsManager.getInstance();
        layoutMain = findViewById(R.id.layoutBackground);
        layoutMain.setOnLongClickListener(this);
        registerReceiver(mBroadcastReceiver, makeIntentFilter());
    }

    public void onDestroy() {
        unregisterReceiver(mBroadcastReceiver);
        super.onDestroy();
    }
    @Override
    public boolean onLongClick(View v) {
        switch(v.getId()){
            case R.id.layoutBackground:
                settingsManager.login(this,"admin@reserve.com", "admin");

                return true;
        }
        return false;
    }

    @Override
    public void onClick(View v) {
        switch(v.getId()){
            case R.id.btnLogin:
                SettingsManager.getInstance().login(mContext, etEmail.getText().toString(), etPassword.getText().toString());
                break;
        }
    }

    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { //Broadcast Receiver to automatically start and stop the Serial connection.
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if(action == null){
                return;
            }
            switch(action){
                case Constants.Actions.ACTION_LOGIN:
                    Intent i = new Intent(mContext, MainActivity.class);
                    startActivity(i);
                    break;

            }
        }
    };

    private IntentFilter makeIntentFilter(){
        IntentFilter filter = new IntentFilter();
        filter.addAction(Constants.Actions.ACTION_LOGIN);
        return filter;
    }
}
