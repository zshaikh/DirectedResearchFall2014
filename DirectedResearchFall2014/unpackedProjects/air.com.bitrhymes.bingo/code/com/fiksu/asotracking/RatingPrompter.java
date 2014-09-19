package com.fiksu.asotracking;

import android.util.*;
import android.content.pm.*;
import java.util.*;
import android.app.*;
import android.net.*;
import android.content.*;

class RatingPrompter
{
    private static final int NUMBER_OF_DAYS_BEFORE_RATING_IN_MILLIS = 432000000;
    private static final int NUMBER_OF_LAUNCHES_BEFORE_RATING = 5;
    private static final String PREFERENCES_ALREADY_RATED_KEY = "Fiksu.alreadyRated";
    private static final String PREFERENCES_FIRST_LAUNCHED_KEY = "Fiksu.firstLaunchedAt";
    private static final String PREFERENCES_NAME_KEY = "Fiksu.ratingsDictionary";
    private static final String PREFERENCES_NUMBER_OF_LAUNCHES_KEY = "Fiksu.numberOfLaunches";
    private final Activity mActivity;
    private final String mAppName;
    private final RatingClickListener mNoRatingButtonListener;
    private final RatingClickListener mPostponeRatingButtonListener;
    private final RatingClickListener mRatingButtonListener;
    
    public RatingPrompter(final Activity mActivity) {
        super();
        this.mRatingButtonListener = new RatingClickListener(PromptResult.USER_RATED, mActivity);
        this.mNoRatingButtonListener = new RatingClickListener(PromptResult.USER_DID_NOT_RATE, mActivity);
        this.mPostponeRatingButtonListener = new RatingClickListener(PromptResult.USER_POSTPONED_RATING, mActivity);
        this.mActivity = mActivity;
        final PackageManager packageManager = this.mActivity.getPackageManager();
        final String packageName = this.mActivity.getPackageName();
        while (true) {
            try {
                final String string = packageManager.getApplicationInfo(packageName, 0).loadLabel(packageManager).toString();
                this.mAppName = string;
            }
            catch (PackageManager$NameNotFoundException ex) {
                Log.e("FiksuTracking", "Could not access package: " + packageName);
                final String string = null;
                continue;
            }
            break;
        }
    }
    
    private boolean connectedToNetwork() {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)this.mActivity.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
    }
    
    private boolean enoughTimeSinceFirstLaunch(final SharedPreferences sharedPreferences, final SharedPreferences$Editor sharedPreferences$Editor) {
        final Date date = new Date();
        final long long1 = sharedPreferences.getLong("Fiksu.firstLaunchedAt", date.getTime());
        final boolean b = date.getTime() - long1 > 432000000L;
        if (date.getTime() == long1) {
            sharedPreferences$Editor.putLong("Fiksu.firstLaunchedAt", date.getTime());
        }
        return b;
    }
    
    private int getNumberOfLaunches(final SharedPreferences sharedPreferences, final SharedPreferences$Editor sharedPreferences$Editor) {
        final int n = 1 + sharedPreferences.getInt("Fiksu.numberOfLaunches", 0);
        sharedPreferences$Editor.putInt("Fiksu.numberOfLaunches", n);
        return n;
    }
    
    private void setUserRated() {
        final SharedPreferences$Editor edit = this.mActivity.getSharedPreferences("Fiksu.ratingsDictionary", 0).edit();
        edit.putBoolean("Fiksu.alreadyRated", true);
        edit.commit();
    }
    
    private boolean shouldPrompt() {
        if (this.mAppName == null) {
            return false;
        }
        if (!this.connectedToNetwork()) {
            return false;
        }
        final SharedPreferences sharedPreferences = this.mActivity.getSharedPreferences("Fiksu.ratingsDictionary", 0);
        if (sharedPreferences.getBoolean("Fiksu.alreadyRated", false)) {
            return false;
        }
        final SharedPreferences$Editor edit = sharedPreferences.edit();
        final int numberOfLaunches = this.getNumberOfLaunches(sharedPreferences, edit);
        final boolean enoughTimeSinceFirstLaunch = this.enoughTimeSinceFirstLaunch(sharedPreferences, edit);
        edit.commit();
        return numberOfLaunches >= 5 && enoughTimeSinceFirstLaunch;
    }
    
    public void maybeShowPrompt() {
        if (!this.shouldPrompt()) {
            return;
        }
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)this.mActivity);
        alertDialog$Builder.setTitle((CharSequence)("Enjoying " + this.mAppName + "?"));
        alertDialog$Builder.setMessage((CharSequence)"If so, please rate it in Google Play.  It takes less than a minute and we appreciate your support!");
        alertDialog$Builder.setPositiveButton((CharSequence)("Rate " + this.mAppName), (DialogInterface$OnClickListener)this.mRatingButtonListener);
        alertDialog$Builder.setNegativeButton((CharSequence)"No thanks", (DialogInterface$OnClickListener)this.mNoRatingButtonListener);
        alertDialog$Builder.setNeutralButton((CharSequence)"Remind me later", (DialogInterface$OnClickListener)this.mPostponeRatingButtonListener);
        alertDialog$Builder.show();
    }
    
    private enum PromptResult
    {
        USER_DID_NOT_RATE("USER_DID_NOT_RATE", 1, 2), 
        USER_POSTPONED_RATING("USER_POSTPONED_RATING", 2, 3), 
        USER_RATED("USER_RATED", 0, 1);
    }
    
    private class RatingClickListener implements DialogInterface$OnClickListener
    {
        private PromptResult mPromptResult;
        
        static /* synthetic */ int[] $SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult() {
            final int[] $switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult = RatingClickListener.$SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult;
            if ($switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult != null) {
                return $switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult;
            }
            final int[] $switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult2 = new int[PromptResult.values().length];
            while (true) {
                try {
                    $switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult2[PromptResult.USER_DID_NOT_RATE.ordinal()] = 2;
                    try {
                        $switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult2[PromptResult.USER_POSTPONED_RATING.ordinal()] = 3;
                        try {
                            $switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult2[PromptResult.USER_RATED.ordinal()] = 1;
                            return RatingClickListener.$SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult = $switch_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult2;
                        }
                        catch (NoSuchFieldError noSuchFieldError) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError2) {}
                }
                catch (NoSuchFieldError noSuchFieldError3) {
                    continue;
                }
                break;
            }
        }
        
        RatingClickListener(final PromptResult mPromptResult, final Activity activity) {
            super();
            this.mPromptResult = mPromptResult;
        }
        
        public void onClick(final DialogInterface dialogInterface, final int n) {
            switch ($SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult()[this.mPromptResult.ordinal()]) {
                default: {}
                case 1: {
                    new RatingEventTracker((Context)RatingPrompter.this.mActivity, "rated", 5).uploadEvent();
                    Log.e("FiksuTracking", RatingPrompter.this.mActivity.getPackageName());
                    RatingPrompter.this.setUserRated();
                    RatingPrompter.this.mActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + RatingPrompter.this.mActivity.getPackageName())));
                }
                case 2: {
                    new RatingEventTracker((Context)RatingPrompter.this.mActivity, "did_not_rate", 5).uploadEvent();
                    RatingPrompter.this.setUserRated();
                }
                case 3: {
                    new RatingEventTracker((Context)RatingPrompter.this.mActivity, "deferred_rating", 5).uploadEvent();
                }
            }
        }
    }
}
