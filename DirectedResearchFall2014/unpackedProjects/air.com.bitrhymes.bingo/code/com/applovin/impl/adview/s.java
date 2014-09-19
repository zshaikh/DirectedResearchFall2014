package com.applovin.impl.adview;

import java.util.*;
import android.app.*;
import com.applovin.sdk.*;
import android.graphics.*;
import android.view.*;
import com.applovin.impl.sdk.*;
import android.content.*;
import android.net.*;
import java.io.*;

class s implements Runnable
{
    final /* synthetic */ AdViewControllerJsInterface a;
    
    s(final AdViewControllerJsInterface a) {
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        this.a.notifyJavaScriptOfNewState(this.a.videoOverlay.getPlaybackState());
    }
}
