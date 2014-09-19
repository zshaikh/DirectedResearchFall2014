package air.com.bitrhymes.bingo;

import android.app.*;
import com.fiksu.asotracking.*;
import android.util.*;

public class BingoBashApplication extends Application
{
    public void onCreate() {
        FiksuTrackingManager.initialize(this);
        Log.i("BingoBashApplication", "Fiksu tracking called");
    }
}
