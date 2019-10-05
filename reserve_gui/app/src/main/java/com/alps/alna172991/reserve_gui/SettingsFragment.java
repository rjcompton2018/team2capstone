package com.alps.alna172991.reserve_gui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;

/**
 * Created by Kevin Fang on 8/28/2015.
 */


public class SettingsFragment extends PreferenceFragment implements SharedPreferences.OnSharedPreferenceChangeListener{

    private final static String TAG = SettingsFragment.class.getSimpleName();
    private Context mContext = null;
    SharedPreferences sharedPreferences;


    public void setContext(Context mContext) {
        this.mContext = mContext;
    }


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Load the preferences from an XML resource
        addPreferencesFromResource(R.xml.app_preferences);

    }

    @Override
    public void onResume(){
        super.onResume();
        sharedPreferences = getPreferenceManager().getSharedPreferences();
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        updateSummary(preferenceScreen.findPreference(mContext.getString(R.string.preference_email_address)));
        updateSummary(preferenceScreen.findPreference(mContext.getString(R.string.preference_employee_status)));
        updateSummary(preferenceScreen.findPreference(mContext.getString(R.string.preference_max_distance)));

    }
    public void updateSummary(Preference preference){
        if(preference instanceof EditTextPreference){
            EditTextPreference etp = (EditTextPreference)preference;
            if(etp.getText() != null){
                etp.setSummary(etp.getText().toUpperCase());
            }
        }else if(preference instanceof ListPreference){
            ListPreference lp = (ListPreference)preference;
            if(lp.getValue() != null){
                lp.setSummary(lp.getValue());
            }
        }
        else{
            switch(preference.getKey()){
                case "preference_email_address":
                    preference.setSummary(SettingsManager.getInstance().email);
                    break;
                case "preference_employee_status":
                    preference.setSummary(SettingsManager.getInstance().employmentStatus);

                    break;
            }
        }
    }


    @Override
    public  void onPause(){
        super.onPause();
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }


    private void bindPreferenceClick(Preference preference) {
        // Set the listener to watch for value click.
        preference.setOnPreferenceClickListener(sPreferenceOnClick);

    }
    private Preference.OnPreferenceClickListener sPreferenceOnClick = new Preference.OnPreferenceClickListener() {
        @Override
        public boolean onPreferenceClick(Preference pref) {

            return false;
        }

    };

    private void restartApplication(){
        Intent i = mContext.getPackageManager()
                .getLaunchIntentForPackage( mContext.getPackageName() );
        i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        startActivity(i);
    }

    /**
     * Binds a preference's summary to its value. More specifically, when the
     * preference's value is changed, its summary (line of text below the
     * preference title) is updated to reflect the value. The summary is also
     * immediately updated upon calling this method. The exact display format is
     * dependent on the type of preference.
     *
     * @see #sBindPreferenceSummaryToValueListener
     */
    private void bindPreferenceSummaryToValue(Preference preference) {
        preference.setOnPreferenceChangeListener(sBindPreferenceSummaryToValueListener);

    }


    /**
     * A preference value change listener that updates the preference's summary
     * to reflect its new value.
     */
    private Preference.OnPreferenceChangeListener sBindPreferenceSummaryToValueListener = new Preference.OnPreferenceChangeListener() {
        @Override
        public boolean onPreferenceChange(Preference preference, Object value) {
            String stringValue = value.toString();

            return true;
        }
    };

    @Override
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
        Preference pref = findPreference(key);
        updateSummary(pref);
    }



}

