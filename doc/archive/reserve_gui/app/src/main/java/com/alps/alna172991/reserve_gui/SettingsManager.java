package com.alps.alna172991.reserve_gui;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.widget.Toast;

public class SettingsManager {
    private static SettingsManager sharedInstance;
    private Context mContext;
    String username = "admin";
    String password = "admin";
    String email = "admin@reserve.com";
    String tempemail = "admin@reserve.com";
    String employmentStatus = "Manager";

    public boolean isLoggedIn() {
        return loggedIn;
    }

    public void setLoggedIn(boolean loggedIn) {
        this.loggedIn = loggedIn;
    }

    private boolean loggedIn = false;
    private SettingsManager(){

    }

    public static SettingsManager getInstance(){
        if(sharedInstance == null){
            sharedInstance = new SettingsManager();
        }
        return sharedInstance;
    }

    public void updateSettings(Context context){
        mContext = context;
        SharedPreferences sharedPref = PreferenceManager.getDefaultSharedPreferences(mContext);
        setLoggedIn(sharedPref.getBoolean(mContext.getString(R.string.preference_login_status), false));
        email = sharedPref.getString(mContext.getString(R.string.preference_email_address), "");
        employmentStatus = sharedPref.getString(mContext.getString(R.string.preference_employee_status), "Non-employee user");

    }

    public void login(Context context, String username, String password){
        if(this.tempemail.equals(username) && this.password.equals(password))
        {
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
            editor.putBoolean(mContext.getString(R.string.preference_login_status), true);
            editor.putString(mContext.getString(R.string.preference_employee_status), "Non-employee user");
            editor.putString(mContext.getString(R.string.preference_email_address), username);
            editor.apply();
            context.sendBroadcast(new Intent(Constants.Actions.ACTION_LOGIN));
        }
        else{
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(context).edit();
            editor.putBoolean(mContext.getString(R.string.preference_login_status), false);
            editor.apply();
            Toast.makeText(mContext, "Invalid email or password!", Toast.LENGTH_SHORT).show();
        }
        updateSettings(context);
    }
}
