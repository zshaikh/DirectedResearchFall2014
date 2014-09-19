package com.tapjoy.mraid.view;

import android.app.*;
import android.os.*;
import com.tapjoy.mraid.listener.*;
import com.tapjoy.mraid.controller.*;
import android.content.*;
import com.tapjoy.mraid.util.*;
import android.widget.*;
import android.view.*;
import java.util.*;

public class ActionHandler extends Activity
{
    private static final String TAG = "MRAID Action Handler";
    private HashMap<MraidView.Action, Object> actionData;
    private RelativeLayout layout;
    
    public ActionHandler() {
        super();
        this.actionData = new HashMap<MraidView.Action, Object>();
    }
    
    private void doAction(final Bundle bundle) {
        final String string = bundle.getString("action");
        if (string == null) {
            return;
        }
        final MraidView.Action value = MraidView.Action.valueOf(string);
        switch (value) {
            default: {}
            case PLAY_AUDIO: {
                this.initPlayer(bundle, value).playAudio();
            }
            case PLAY_VIDEO: {
                this.initPlayer(bundle, value).playVideo();
            }
        }
    }
    
    private void setPlayerListener(final MraidPlayer mraidPlayer) {
        mraidPlayer.setListener(new Player() {
            @Override
            public void onComplete() {
                ActionHandler.this.finish();
            }
            
            @Override
            public void onError() {
                ActionHandler.this.finish();
            }
            
            @Override
            public void onPrepared() {
            }
        });
    }
    
    MraidPlayer initPlayer(final Bundle bundle, final MraidView.Action key) {
        final Abstract.PlayerProperties playerProperties = (Abstract.PlayerProperties)bundle.getParcelable("player_properties");
        final Abstract.Dimensions dimensions = (Abstract.Dimensions)bundle.getParcelable("expand_dimensions");
        final MraidPlayer mraidPlayer = new MraidPlayer((Context)this);
        mraidPlayer.setPlayData(playerProperties, Utils.getData("expand_url", bundle));
        RelativeLayout$LayoutParams layoutParams;
        if (!playerProperties.inline && playerProperties.startStyle.equals("fullscreen")) {
            this.getWindow().setFlags(1024, 1024);
            this.getWindow().setFlags(16777216, 16777216);
            layoutParams = new RelativeLayout$LayoutParams(-1, -1);
            layoutParams.addRule(13);
        }
        else {
            layoutParams = new RelativeLayout$LayoutParams(dimensions.width, dimensions.height);
            layoutParams.topMargin = dimensions.y;
            layoutParams.leftMargin = dimensions.x;
        }
        mraidPlayer.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        this.layout.addView((View)mraidPlayer);
        this.actionData.put(key, mraidPlayer);
        this.setPlayerListener(mraidPlayer);
        return mraidPlayer;
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        final Bundle extras = this.getIntent().getExtras();
        (this.layout = new RelativeLayout((Context)this)).setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        this.layout.setBackgroundColor(-16777216);
        this.setContentView((View)this.layout);
        this.doAction(extras);
    }
    
    protected void onStop() {
        for (final Map.Entry<MraidView.Action, Object> entry : this.actionData.entrySet()) {
            switch (entry.getKey()) {
                default: {
                    continue;
                }
                case PLAY_AUDIO:
                case PLAY_VIDEO: {
                    entry.getValue().releasePlayer();
                    continue;
                }
            }
        }
        super.onStop();
    }
}
