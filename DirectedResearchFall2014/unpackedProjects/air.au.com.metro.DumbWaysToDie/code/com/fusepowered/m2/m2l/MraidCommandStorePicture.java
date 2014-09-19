package com.fusepowered.m2.m2l;

import java.util.*;
import android.util.*;

class MraidCommandStorePicture extends MraidCommand
{
    public static final String MIME_TYPE_HEADER = "Content-Type";
    
    public MraidCommandStorePicture(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        final String stringFromParamsForKey = this.getStringFromParamsForKey("uri");
        if (stringFromParamsForKey != null && !stringFromParamsForKey.equals("")) {
            this.mView.getDisplayController().showUserDownloadImageAlert(stringFromParamsForKey);
            return;
        }
        this.mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.STORE_PICTURE, "Image can't be stored with null or empty URL");
        Log.d("MoPub", "Invalid URI for Mraid Store Picture.");
    }
    
    @Override
    protected boolean isCommandDependentOnUserClick(final MraidView.PlacementType placementType) {
        return true;
    }
}
