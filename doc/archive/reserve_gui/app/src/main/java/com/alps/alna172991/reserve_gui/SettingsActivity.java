package com.alps.alna172991.reserve_gui;

import android.content.Context;
import android.preference.PreferenceFragment;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MenuItem;

public class SettingsActivity extends AppCompatActivity {
    Context mContext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mContext = this;
        PreferenceFragment preferenceFragment = new SettingsFragment();
        SettingsFragment settingsFragment = (SettingsFragment) preferenceFragment;
        settingsFragment.setContext(getApplicationContext());
        getFragmentManager().beginTransaction().replace(android.R.id.content, preferenceFragment).commit();

    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        return super.onOptionsItemSelected(item);
    }
    @Override
    protected void onResume() {
        super.onResume();
    }

    @Override
    public void onBackPressed(){
        super.onBackPressed();
    }
    @Override
    public  void onPause(){
        super.onPause();

    }

    @Override
    public  void onDestroy(){
        super.onDestroy();

    }
}
