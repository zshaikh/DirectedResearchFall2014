package com.bitrhymes.iab.functions;

import android.app.*;
import android.os.*;
import android.util.*;
import com.bitrhymes.iab.util.*;
import org.json.*;
import java.util.*;
import android.content.*;
import android.view.*;

public class GoogleIABV3Activity extends Activity
{
    private static final String TAG = "InApp";
    boolean alreadyStarted;
    String devPayLoad;
    Bundle extraBundleObj;
    IabHelper mHelper;
    String mSku;
    String method;
    
    public GoogleIABV3Activity() {
        super();
        this.mSku = "";
        this.devPayLoad = "";
        this.method = "";
    }
    
    private void callConfirmPurchase() {
        Log.d("InApp", " callConfirmPurchase ");
        Log.d("InApp", "Creating IAB helper.");
        (this.mHelper = new IabHelper((Context)this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB")).enableDebugLogging(true);
        Log.d("InApp", "Starting setup.");
        this.mHelper.startSetup((IabHelper.OnIabSetupFinishedListener)new IabHelper.OnIabSetupFinishedListener() {
            @Override
            public void onIabSetupFinished(final IabResult iabResult) {
                Log.d("InApp", "callConfirmPurchase Setup finished." + iabResult);
                if (!iabResult.isSuccess()) {
                    Log.d("InApp", "callConfirmPurchase Problem setting up in-app billing: " + iabResult);
                    Utils.setInAppActivity(null);
                    GoogleIABV3Activity.this.finish();
                    Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_CONFIRMATION_FAILED", "");
                    return;
                }
                Log.d("InApp", "Setup successful. Querying inventory.");
                GoogleIABV3Activity.this.mHelper.queryInventoryAsync((IabHelper.QueryInventoryFinishedListener)new QueryInventoryFinishedListener() {
                    @Override
                    public void onQueryInventoryFinished(final IabResult obj, final Inventory inventory) {
                        Log.d("InApp", "callConfirmPurchase:" + obj);
                        if (obj.isFailure()) {
                            Utils.setInAppActivity(null);
                            GoogleIABV3Activity.this.finish();
                            Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_CONFIRMATION_FAILED", "");
                        }
                        else {
                            final OnConsumeFinishedListener onConsumeFinishedListener = new OnConsumeFinishedListener() {
                                @Override
                                public void onConsumeFinished(final Purchase purchase, final IabResult obj) {
                                    Utils.setInAppActivity(null);
                                    GoogleIABV3Activity.this.finish();
                                    if (obj.isSuccess()) {
                                        Log.d("InApp", "PURCHASE_CONFIRMATION_SUCCESS:" + purchase.getOriginalJson());
                                        Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_CONFIRMATION_SUCCESS", purchase.getOriginalJson());
                                        return;
                                    }
                                    Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_CONFIRMATION_FAILED", new StringBuilder().append(obj).toString());
                                }
                            };
                            if (inventory.getPurchase(GoogleIABV3Activity.this.mSku) != null) {
                                GoogleIABV3Activity.this.mHelper.consumeAsync(inventory.getPurchase(GoogleIABV3Activity.this.mSku), (IabHelper.OnConsumeFinishedListener)onConsumeFinishedListener);
                            }
                        }
                    }
                });
            }
        });
    }
    
    private void callGetPurchaseInfo() {
        Log.d("InApp", " callGetPurchaseInfo ");
        Log.d("InApp", "Creating IAB helper.");
        (this.mHelper = new IabHelper((Context)this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB")).enableDebugLogging(true);
        Log.d("InApp", "Starting setup.");
        this.mHelper.startSetup((IabHelper.OnIabSetupFinishedListener)new IabHelper.OnIabSetupFinishedListener() {
            @Override
            public void onIabSetupFinished(final IabResult iabResult) {
                Log.d("InApp", "callGetPurchaseInfo Setup finished." + iabResult);
                if (!iabResult.isSuccess()) {
                    Log.d("InApp", "result :  " + iabResult.getMessage());
                    Log.d("InApp", "callGetPurchaseInfo Problem setting up in-app billing: " + iabResult);
                    Utils.setInAppActivity(null);
                    GoogleIABV3Activity.this.finish();
                    Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_CONFIRMATION_FAILED", " ");
                    return;
                }
                Log.d("InApp", "Setup successful. Querying inventory.");
                GoogleIABV3Activity.this.mHelper.queryInventoryAsync((IabHelper.QueryInventoryFinishedListener)new QueryInventoryFinishedListener() {
                    @Override
                    public void onQueryInventoryFinished(final IabResult obj, final Inventory inventory) {
                        Log.d("InApp", "callGetPurchaseInfo:" + obj);
                        if (obj.isFailure()) {
                            Utils.setInAppActivity(null);
                            GoogleIABV3Activity.this.finish();
                            Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_CHANGE", "");
                            return;
                        }
                        Utils.setInAppActivity(null);
                        GoogleIABV3Activity.this.finish();
                        final JSONArray jsonArray = new JSONArray();
                        final Iterator<String> iterator = inventory.getPurchaseMap().keySet().iterator();
                        while (iterator.hasNext()) {
                            final Purchase purchase = inventory.getPurchase(iterator.next());
                            try {
                                final JSONObject jsonObject = new JSONObject();
                                jsonObject.put("0", (Object)purchase.getOriginalJson());
                                jsonObject.put("1", (Object)purchase.getSignature());
                                jsonArray.put((Object)jsonObject);
                            }
                            catch (JSONException ex) {
                                ex.printStackTrace();
                                Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_CHANGE", "");
                            }
                        }
                        Log.d("InApp", "PURCHASE_STATE_CHANGE:" + jsonArray.toString());
                        Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_CHANGE", jsonArray.toString());
                    }
                });
            }
        });
    }
    
    private void callIsSupported() {
        Log.d("InApp", " callIsSupported ");
        (this.mHelper = new IabHelper((Context)this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB")).enableDebugLogging(true);
        this.mHelper.startSetup((IabHelper.OnIabSetupFinishedListener)new IabHelper.OnIabSetupFinishedListener() {
            @Override
            public void onIabSetupFinished(final IabResult iabResult) {
                Log.d("InApp", "callIsSupported Setup finished." + iabResult);
                Utils.setInAppActivity(null);
                GoogleIABV3Activity.this.finish();
                if (!iabResult.isSuccess()) {
                    Log.d("InApp", "callIsSupported Problem setting up in-app billing: " + iabResult);
                    Utils.getFREContext().dispatchStatusEventAsync("IAP_SUPPORT_STATUS", "0");
                    return;
                }
                Log.d("InApp", "Setup successful. Querying inventory.");
                Utils.getFREContext().dispatchStatusEventAsync("IAP_SUPPORT_STATUS", "1");
            }
        });
    }
    
    private void purchaeItemRequest() {
        Log.d("InApp", " purchaeItemRequest .");
        (this.mHelper = new IabHelper((Context)this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB")).enableDebugLogging(true);
        this.mHelper.startSetup((IabHelper.OnIabSetupFinishedListener)new IabHelper.OnIabSetupFinishedListener() {
            @Override
            public void onIabSetupFinished(final IabResult obj) {
                Log.d("InApp", "purchaeItemRequest Setup finished." + obj);
                if (!obj.isSuccess()) {
                    Log.i("InApp", "getMessage : " + obj.getMessage());
                    Log.i("InApp", "getResponse : " + obj.getResponse());
                    Log.i("InApp", "hashCode : " + obj.hashCode());
                    Log.d("InApp", " purchaeItemRequest Problem setting up in-app billing: " + obj);
                    Utils.setInAppActivity(null);
                    GoogleIABV3Activity.this.finish();
                    Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_CONFIRMATION_FAILED", new StringBuilder().append(obj).toString());
                }
                else {
                    final OnIabPurchaseFinishedListener onIabPurchaseFinishedListener = new OnIabPurchaseFinishedListener() {
                        @Override
                        public void onIabPurchaseFinished(final IabResult obj, final Purchase purchase) {
                            Utils.setInAppActivity(null);
                            GoogleIABV3Activity.this.finish();
                            Log.d("InApp", "purchaeItemRequest:" + obj);
                            if (obj.getResponse() == -1005) {
                                Log.d("InApp", "User cancelled:" + obj);
                                Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_CANCELLED", new StringBuilder().append(obj).toString());
                                return;
                            }
                            if (obj.isFailure()) {
                                Log.d("InApp", "Error purchasing: " + obj);
                                Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_FAILED", new StringBuilder().append(obj).toString());
                                return;
                            }
                            if (purchase != null) {
                                final JSONObject jsonObject = new JSONObject();
                                try {
                                    jsonObject.put("0", (Object)purchase.getOriginalJson());
                                    jsonObject.put("1", (Object)purchase.getSignature());
                                    Log.d("InApp", "PURCHASE_STATE_SUCCESS : " + jsonObject.toString());
                                    Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_SUCCESS", jsonObject.toString());
                                    return;
                                }
                                catch (JSONException ex) {
                                    ex.printStackTrace();
                                    Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_FAILED", "");
                                    return;
                                }
                            }
                            Utils.getFREContext().dispatchStatusEventAsync("PURCHASE_STATE_FAILED", "");
                        }
                    };
                    if (Utils.getInAppActivity() != null) {
                        GoogleIABV3Activity.this.mHelper.launchPurchaseFlow(Utils.getInAppActivity(), GoogleIABV3Activity.this.mSku, 10001, (IabHelper.OnIabPurchaseFinishedListener)onIabPurchaseFinishedListener, GoogleIABV3Activity.this.devPayLoad);
                    }
                }
            }
        });
    }
    
    protected void onActivityResult(final int i, final int j, final Intent obj) {
        Log.i("InApp", "onActivityResult(" + i + "," + j + "," + obj);
        if (!this.mHelper.handleActivityResult(i, j, obj)) {
            super.onActivityResult(i, j, obj);
            return;
        }
        Log.i("InApp", "onActivityResult handled by IABUtil.");
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        Utils.setInAppActivity(this);
        this.extraBundleObj = this.getIntent().getExtras();
        this.method = this.extraBundleObj.getString("method");
        Log.i("InApp", "Inside OnCreate function");
    }
    
    protected void onDestroy() {
        super.onStop();
        Log.i("InApp", "onDestroy");
        this.alreadyStarted = false;
        if (this.mHelper != null) {
            this.mHelper.dispose();
        }
        this.mHelper = null;
        this.finish();
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return (n == 4 && keyEvent.getRepeatCount() == 0) || super.onKeyDown(n, keyEvent);
    }
    
    protected void onPause() {
        super.onPause();
        Log.i("InApp", "onPause");
    }
    
    protected void onResume() {
        super.onResume();
        Log.i("InApp", "onResume");
    }
    
    protected void onStart() {
        super.onStart();
        Log.i("InApp", "onStart");
        try {
            if (this.alreadyStarted) {
                return;
            }
            this.alreadyStarted = true;
            if (this.method.equalsIgnoreCase("CALL_IS_SUPPORTED")) {
                this.callIsSupported();
                return;
            }
            if (this.method.equalsIgnoreCase("CALL_PURCHASE_ITEM")) {
                this.mSku = this.extraBundleObj.getString("sku");
                this.devPayLoad = this.extraBundleObj.getString("devPayload");
                this.purchaeItemRequest();
                return;
            }
        }
        catch (Exception ex) {
            Log.d("InApp", "onStart->" + ex.getMessage());
            this.finish();
            return;
        }
        if (this.method.equalsIgnoreCase("CALL_CONFIRM_PURCHASE_ITEM")) {
            this.mSku = this.extraBundleObj.getString("sku");
            this.callConfirmPurchase();
            return;
        }
        if (this.method.equalsIgnoreCase("CALL_GET_PURCHASE_INFO")) {
            this.callGetPurchaseInfo();
        }
    }
    
    protected void onStop() {
        super.onStop();
        Log.i("InApp", "onStop");
    }
}
