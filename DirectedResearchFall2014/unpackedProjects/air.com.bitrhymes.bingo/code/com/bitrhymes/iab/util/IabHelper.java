package com.bitrhymes.iab.util;

import com.android.vending.billing.*;
import android.app.*;
import android.util.*;
import org.json.*;
import android.text.*;
import java.util.*;
import android.content.*;
import android.os.*;

public class IabHelper
{
    public static final int BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE = 3;
    public static final int BILLING_RESPONSE_RESULT_DEVELOPER_ERROR = 5;
    public static final int BILLING_RESPONSE_RESULT_ERROR = 6;
    public static final int BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED = 7;
    public static final int BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED = 8;
    public static final int BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE = 4;
    public static final int BILLING_RESPONSE_RESULT_OK = 0;
    public static final int BILLING_RESPONSE_RESULT_USER_CANCELED = 1;
    public static final String GET_SKU_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
    public static final String GET_SKU_DETAILS_ITEM_TYPE_LIST = "ITEM_TYPE_LIST";
    public static final int IABHELPER_BAD_RESPONSE = -1002;
    public static final int IABHELPER_ERROR_BASE = -1000;
    public static final int IABHELPER_INVALID_CONSUMPTION = -1010;
    public static final int IABHELPER_MISSING_TOKEN = -1007;
    public static final int IABHELPER_REMOTE_EXCEPTION = -1001;
    public static final int IABHELPER_SEND_INTENT_FAILED = -1004;
    public static final int IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE = -1009;
    public static final int IABHELPER_UNKNOWN_ERROR = -1008;
    public static final int IABHELPER_UNKNOWN_PURCHASE_RESPONSE = -1006;
    public static final int IABHELPER_USER_CANCELLED = -1005;
    public static final int IABHELPER_VERIFICATION_FAILED = -1003;
    public static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    public static final String ITEM_TYPE_INAPP = "inapp";
    public static final String ITEM_TYPE_SUBS = "subs";
    public static final String RESPONSE_BUY_INTENT = "BUY_INTENT";
    public static final String RESPONSE_CODE = "RESPONSE_CODE";
    public static final String RESPONSE_GET_SKU_DETAILS_LIST = "DETAILS_LIST";
    public static final String RESPONSE_INAPP_ITEM_LIST = "INAPP_PURCHASE_ITEM_LIST";
    public static final String RESPONSE_INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
    public static final String RESPONSE_INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    public static final String RESPONSE_INAPP_SIGNATURE = "INAPP_DATA_SIGNATURE";
    public static final String RESPONSE_INAPP_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
    boolean mAsyncInProgress;
    String mAsyncOperation;
    Context mContext;
    boolean mDebugLog;
    String mDebugTag;
    OnIabPurchaseFinishedListener mPurchaseListener;
    String mPurchasingItemType;
    int mRequestCode;
    IInAppBillingService mService;
    ServiceConnection mServiceConn;
    boolean mSetupDone;
    String mSignatureBase64;
    boolean mSubscriptionsSupported;
    
    public IabHelper(final Context context, final String mSignatureBase64) {
        super();
        this.mDebugLog = false;
        this.mDebugTag = "IabHelper";
        this.mSetupDone = false;
        this.mSubscriptionsSupported = false;
        this.mAsyncInProgress = false;
        this.mAsyncOperation = "";
        this.mSignatureBase64 = null;
        this.mContext = context.getApplicationContext();
        this.mSignatureBase64 = mSignatureBase64;
        this.logDebug("IAB helper created.");
    }
    
    public static String getResponseDesc(final int n) {
        final String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        final String[] split2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (n <= -1000) {
            final int n2 = -1000 - n;
            if (n2 >= 0 && n2 < split2.length) {
                return split2[n2];
            }
            return String.valueOf(String.valueOf(n)) + ":Unknown IAB Helper Error";
        }
        else {
            if (n < 0 || n >= split.length) {
                return String.valueOf(String.valueOf(n)) + ":Unknown";
            }
            return split[n];
        }
    }
    
    void checkSetupDone(final String s) {
        if (!this.mSetupDone) {
            this.logError("Illegal state for operation (" + s + "): IAB helper is not set up.");
            throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + s);
        }
    }
    
    void consume(final Purchase purchase) throws IabException {
        this.checkSetupDone("consume");
        if (!purchase.mItemType.equals("inapp")) {
            throw new IabException(-1010, "Items of type '" + purchase.mItemType + "' can't be consumed.");
        }
        String token;
        String sku;
        try {
            token = purchase.getToken();
            sku = purchase.getSku();
            if (token == null || token.equals("")) {
                this.logError("Can't consume " + sku + ". No token.");
                throw new IabException(-1007, "PurchaseInfo is missing token for sku: " + sku + " " + purchase);
            }
        }
        catch (RemoteException ex) {
            throw new IabException(-1001, "Remote exception while consuming. PurchaseInfo: " + purchase, (Exception)ex);
        }
        this.logDebug("Consuming sku: " + sku + ", token: " + token);
        final int consumePurchase = this.mService.consumePurchase(3, this.mContext.getPackageName(), token);
        if (consumePurchase == 0) {
            this.logDebug("Successfully consumed sku: " + sku);
            return;
        }
        this.logDebug("Error consuming consuming sku " + sku + ". " + getResponseDesc(consumePurchase));
        throw new IabException(consumePurchase, "Error consuming sku " + sku);
    }
    
    public void consumeAsync(final Purchase purchase, final OnConsumeFinishedListener onConsumeFinishedListener) {
        this.checkSetupDone("consume");
        final ArrayList<Purchase> list = new ArrayList<Purchase>();
        list.add(purchase);
        this.consumeAsyncInternal(list, onConsumeFinishedListener, null);
    }
    
    public void consumeAsync(final List<Purchase> list, final OnConsumeMultiFinishedListener onConsumeMultiFinishedListener) {
        this.checkSetupDone("consume");
        this.consumeAsyncInternal(list, null, onConsumeMultiFinishedListener);
    }
    
    void consumeAsyncInternal(final List<Purchase> list, final OnConsumeFinishedListener onConsumeFinishedListener, final OnConsumeMultiFinishedListener onConsumeMultiFinishedListener) {
        final Handler handler = new Handler();
        this.flagStartAsync("consume");
        new Thread(new Runnable() {
            @Override
            public void run() {
                final ArrayList<IabResult> list = new ArrayList<IabResult>();
                for (final Purchase purchase : list) {
                    try {
                        IabHelper.this.consume(purchase);
                        list.add(new IabResult(0, "Successful consume of sku " + purchase.getSku()));
                    }
                    catch (IabException ex) {
                        list.add(ex.getResult());
                    }
                }
                IabHelper.this.flagEndAsync();
                if (onConsumeFinishedListener != null) {
                    handler.post((Runnable)new Runnable() {
                        @Override
                        public void run() {
                            onConsumeFinishedListener.onConsumeFinished(list.get(0), list.get(0));
                        }
                    });
                }
                if (onConsumeMultiFinishedListener != null) {
                    handler.post((Runnable)new Runnable() {
                        @Override
                        public void run() {
                            onConsumeMultiFinishedListener.onConsumeMultiFinished(list, list);
                        }
                    });
                }
            }
        }).start();
    }
    
    public void dispose() {
        this.logDebug("Disposing.");
        this.mSetupDone = false;
        if (this.mServiceConn != null) {
            this.logDebug("Unbinding from service.");
            if (this.mContext != null) {
                this.mContext.unbindService(this.mServiceConn);
            }
            this.mServiceConn = null;
            this.mService = null;
            this.mPurchaseListener = null;
        }
    }
    
    public void enableDebugLogging(final boolean mDebugLog) {
        this.mDebugLog = mDebugLog;
    }
    
    public void enableDebugLogging(final boolean mDebugLog, final String mDebugTag) {
        this.mDebugLog = mDebugLog;
        this.mDebugTag = mDebugTag;
    }
    
    void flagEndAsync() {
        this.logDebug("Ending async operation: " + this.mAsyncOperation);
        this.mAsyncOperation = "";
        this.mAsyncInProgress = false;
    }
    
    void flagStartAsync(final String str) {
        if (this.mAsyncInProgress) {
            throw new IllegalStateException("Can't start async operation (" + str + ") because another async operation(" + this.mAsyncOperation + ") is in progress.");
        }
        this.mAsyncOperation = str;
        this.mAsyncInProgress = true;
        this.logDebug("Starting async operation: " + str);
    }
    
    int getResponseCodeFromBundle(final Bundle bundle) {
        final Object value = bundle.get("RESPONSE_CODE");
        if (value == null) {
            this.logDebug("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (value instanceof Integer) {
            return (int)value;
        }
        if (value instanceof Long) {
            return (int)(long)value;
        }
        this.logError("Unexpected type for bundle response code.");
        this.logError(((Long)value).getClass().getName());
        throw new RuntimeException("Unexpected type for bundle response code: " + ((Long)value).getClass().getName());
    }
    
    int getResponseCodeFromIntent(final Intent intent) {
        final Object value = intent.getExtras().get("RESPONSE_CODE");
        if (value == null) {
            this.logError("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (value instanceof Integer) {
            return (int)value;
        }
        if (value instanceof Long) {
            return (int)(long)value;
        }
        this.logError("Unexpected type for intent response code.");
        this.logError(((Long)value).getClass().getName());
        throw new RuntimeException("Unexpected type for intent response code: " + ((Long)value).getClass().getName());
    }
    
    public boolean handleActivityResult(final int p0, final int p1, final Intent p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc_w           "IABHelper"
        //     3: new             Ljava/lang/StringBuilder;
        //     6: dup            
        //     7: ldc_w           "Purchase item response = "
        //    10: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    13: iload_2        
        //    14: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    17: ldc_w           ","
        //    20: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    23: iload_1        
        //    24: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    27: ldc_w           ","
        //    30: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    33: aload_3        
        //    34: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    37: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    40: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    43: pop            
        //    44: iload_1        
        //    45: aload_0        
        //    46: getfield        com/bitrhymes/iab/util/IabHelper.mRequestCode:I
        //    49: if_icmpeq       54
        //    52: iconst_0       
        //    53: ireturn        
        //    54: aload_0        
        //    55: ldc_w           "handleActivityResult"
        //    58: invokevirtual   com/bitrhymes/iab/util/IabHelper.checkSetupDone:(Ljava/lang/String;)V
        //    61: aload_0        
        //    62: invokevirtual   com/bitrhymes/iab/util/IabHelper.flagEndAsync:()V
        //    65: aload_3        
        //    66: ifnonnull       112
        //    69: aload_0        
        //    70: ldc_w           "Null data in IAB activity result."
        //    73: invokevirtual   com/bitrhymes/iab/util/IabHelper.logError:(Ljava/lang/String;)V
        //    76: new             Lcom/bitrhymes/iab/util/IabResult;
        //    79: dup            
        //    80: sipush          -1002
        //    83: ldc_w           "Null data in IAB result"
        //    86: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //    89: astore          20
        //    91: aload_0        
        //    92: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //    95: ifnull          110
        //    98: aload_0        
        //    99: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   102: aload           20
        //   104: aconst_null    
        //   105: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   110: iconst_1       
        //   111: ireturn        
        //   112: aload_0        
        //   113: aload_3        
        //   114: invokevirtual   com/bitrhymes/iab/util/IabHelper.getResponseCodeFromIntent:(Landroid/content/Intent;)I
        //   117: istore          5
        //   119: aload_3        
        //   120: ldc             "INAPP_PURCHASE_DATA"
        //   122: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //   125: astore          6
        //   127: aload_3        
        //   128: ldc             "INAPP_DATA_SIGNATURE"
        //   130: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //   133: astore          7
        //   135: ldc             "IabHelper"
        //   137: new             Ljava/lang/StringBuilder;
        //   140: dup            
        //   141: invokespecial   java/lang/StringBuilder.<init>:()V
        //   144: iload           5
        //   146: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   149: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   152: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   155: pop            
        //   156: iload_2        
        //   157: iconst_m1      
        //   158: if_icmpne       550
        //   161: iload           5
        //   163: ifne            550
        //   166: aload_0        
        //   167: ldc_w           "Successful resultcode from purchase activity."
        //   170: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   173: aload_0        
        //   174: new             Ljava/lang/StringBuilder;
        //   177: dup            
        //   178: ldc_w           "Purchase data: "
        //   181: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   184: aload           6
        //   186: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   189: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   192: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   195: aload_0        
        //   196: new             Ljava/lang/StringBuilder;
        //   199: dup            
        //   200: ldc_w           "Data signature: "
        //   203: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   206: aload           7
        //   208: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   211: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   214: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   217: aload_0        
        //   218: new             Ljava/lang/StringBuilder;
        //   221: dup            
        //   222: ldc_w           "Extras: "
        //   225: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   228: aload_3        
        //   229: invokevirtual   android/content/Intent.getExtras:()Landroid/os/Bundle;
        //   232: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   235: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   238: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   241: aload_0        
        //   242: new             Ljava/lang/StringBuilder;
        //   245: dup            
        //   246: ldc_w           "Expected item type: "
        //   249: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   252: aload_0        
        //   253: getfield        com/bitrhymes/iab/util/IabHelper.mPurchasingItemType:Ljava/lang/String;
        //   256: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   259: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   262: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   265: aload           6
        //   267: ifnull          275
        //   270: aload           7
        //   272: ifnonnull       345
        //   275: aload_0        
        //   276: ldc_w           "BUG: either purchaseData or dataSignature is null."
        //   279: invokevirtual   com/bitrhymes/iab/util/IabHelper.logError:(Ljava/lang/String;)V
        //   282: aload_0        
        //   283: new             Ljava/lang/StringBuilder;
        //   286: dup            
        //   287: ldc_w           "Extras: "
        //   290: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   293: aload_3        
        //   294: invokevirtual   android/content/Intent.getExtras:()Landroid/os/Bundle;
        //   297: invokevirtual   android/os/Bundle.toString:()Ljava/lang/String;
        //   300: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   303: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   306: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   309: new             Lcom/bitrhymes/iab/util/IabResult;
        //   312: dup            
        //   313: sipush          -1008
        //   316: ldc_w           "IAB returned null purchaseData or dataSignature"
        //   319: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //   322: astore          12
        //   324: aload_0        
        //   325: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   328: ifnull          343
        //   331: aload_0        
        //   332: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   335: aload           12
        //   337: aconst_null    
        //   338: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   343: iconst_1       
        //   344: ireturn        
        //   345: new             Lcom/bitrhymes/iab/util/Purchase;
        //   348: dup            
        //   349: aload_0        
        //   350: getfield        com/bitrhymes/iab/util/IabHelper.mPurchasingItemType:Ljava/lang/String;
        //   353: aload           6
        //   355: aload           7
        //   357: invokespecial   com/bitrhymes/iab/util/Purchase.<init>:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //   360: astore          13
        //   362: aload           13
        //   364: invokevirtual   com/bitrhymes/iab/util/Purchase.getSku:()Ljava/lang/String;
        //   367: astore          17
        //   369: aload_0        
        //   370: getfield        com/bitrhymes/iab/util/IabHelper.mSignatureBase64:Ljava/lang/String;
        //   373: aload           6
        //   375: aload           7
        //   377: invokestatic    com/bitrhymes/iab/util/Security.verifyPurchase:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
        //   380: ifne            458
        //   383: aload_0        
        //   384: new             Ljava/lang/StringBuilder;
        //   387: dup            
        //   388: ldc_w           "Purchase signature verification FAILED for sku "
        //   391: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   394: aload           17
        //   396: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   399: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   402: invokevirtual   com/bitrhymes/iab/util/IabHelper.logError:(Ljava/lang/String;)V
        //   405: new             Lcom/bitrhymes/iab/util/IabResult;
        //   408: dup            
        //   409: sipush          -1003
        //   412: new             Ljava/lang/StringBuilder;
        //   415: dup            
        //   416: ldc_w           "Signature verification failed for sku "
        //   419: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   422: aload           17
        //   424: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   427: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   430: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //   433: astore          18
        //   435: aload_0        
        //   436: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   439: ifnull          766
        //   442: aload_0        
        //   443: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   446: aload           18
        //   448: aload           13
        //   450: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   455: goto            766
        //   458: aload_0        
        //   459: ldc_w           "Purchase signature successfully verified."
        //   462: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   465: aload_0        
        //   466: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   469: ifnull          494
        //   472: aload_0        
        //   473: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   476: new             Lcom/bitrhymes/iab/util/IabResult;
        //   479: dup            
        //   480: iconst_0       
        //   481: ldc_w           "Success"
        //   484: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //   487: aload           13
        //   489: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   494: iconst_1       
        //   495: ireturn        
        //   496: astore          19
        //   498: aload           19
        //   500: astore          15
        //   502: aload_0        
        //   503: ldc_w           "Failed to parse purchase data."
        //   506: invokevirtual   com/bitrhymes/iab/util/IabHelper.logError:(Ljava/lang/String;)V
        //   509: aload           15
        //   511: invokevirtual   org/json/JSONException.printStackTrace:()V
        //   514: new             Lcom/bitrhymes/iab/util/IabResult;
        //   517: dup            
        //   518: sipush          -1002
        //   521: ldc_w           "Failed to parse purchase data."
        //   524: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //   527: astore          16
        //   529: aload_0        
        //   530: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   533: ifnull          548
        //   536: aload_0        
        //   537: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   540: aload           16
        //   542: aconst_null    
        //   543: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   548: iconst_1       
        //   549: ireturn        
        //   550: iload_2        
        //   551: iconst_m1      
        //   552: if_icmpne       616
        //   555: aload_0        
        //   556: new             Ljava/lang/StringBuilder;
        //   559: dup            
        //   560: ldc_w           "Result code was OK but in-app billing response was not OK: "
        //   563: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   566: iload           5
        //   568: invokestatic    com/bitrhymes/iab/util/IabHelper.getResponseDesc:(I)Ljava/lang/String;
        //   571: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   574: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   577: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   580: aload_0        
        //   581: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   584: ifnull          494
        //   587: new             Lcom/bitrhymes/iab/util/IabResult;
        //   590: dup            
        //   591: iload           5
        //   593: ldc_w           "Problem purchashing item."
        //   596: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //   599: astore          11
        //   601: aload_0        
        //   602: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   605: aload           11
        //   607: aconst_null    
        //   608: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   613: goto            494
        //   616: iload_2        
        //   617: ifne            682
        //   620: aload_0        
        //   621: new             Ljava/lang/StringBuilder;
        //   624: dup            
        //   625: ldc_w           "Purchase canceled - Response: "
        //   628: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   631: iload           5
        //   633: invokestatic    com/bitrhymes/iab/util/IabHelper.getResponseDesc:(I)Ljava/lang/String;
        //   636: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   639: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   642: invokevirtual   com/bitrhymes/iab/util/IabHelper.logDebug:(Ljava/lang/String;)V
        //   645: new             Lcom/bitrhymes/iab/util/IabResult;
        //   648: dup            
        //   649: sipush          -1005
        //   652: ldc_w           "User canceled."
        //   655: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //   658: astore          10
        //   660: aload_0        
        //   661: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   664: ifnull          494
        //   667: aload_0        
        //   668: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   671: aload           10
        //   673: aconst_null    
        //   674: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   679: goto            494
        //   682: aload_0        
        //   683: new             Ljava/lang/StringBuilder;
        //   686: dup            
        //   687: ldc_w           "Purchase failed. Result code: "
        //   690: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   693: iload_2        
        //   694: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //   697: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   700: ldc_w           ". Response: "
        //   703: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   706: iload           5
        //   708: invokestatic    com/bitrhymes/iab/util/IabHelper.getResponseDesc:(I)Ljava/lang/String;
        //   711: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   714: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   717: invokevirtual   com/bitrhymes/iab/util/IabHelper.logError:(Ljava/lang/String;)V
        //   720: new             Lcom/bitrhymes/iab/util/IabResult;
        //   723: dup            
        //   724: sipush          -1006
        //   727: ldc_w           "Unknown purchase response."
        //   730: invokespecial   com/bitrhymes/iab/util/IabResult.<init>:(ILjava/lang/String;)V
        //   733: astore          9
        //   735: aload_0        
        //   736: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   739: ifnull          494
        //   742: aload_0        
        //   743: getfield        com/bitrhymes/iab/util/IabHelper.mPurchaseListener:Lcom/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener;
        //   746: aload           9
        //   748: aconst_null    
        //   749: invokeinterface com/bitrhymes/iab/util/IabHelper$OnIabPurchaseFinishedListener.onIabPurchaseFinished:(Lcom/bitrhymes/iab/util/IabResult;Lcom/bitrhymes/iab/util/Purchase;)V
        //   754: goto            494
        //   757: astore          14
        //   759: aload           14
        //   761: astore          15
        //   763: goto            502
        //   766: iconst_1       
        //   767: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                    
        //  -----  -----  -----  -----  ------------------------
        //  345    362    496    502    Lorg/json/JSONException;
        //  362    455    757    766    Lorg/json/JSONException;
        //  458    465    757    766    Lorg/json/JSONException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0458:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void launchPurchaseFlow(final Activity activity, final String s, final int n, final OnIabPurchaseFinishedListener onIabPurchaseFinishedListener) {
        this.launchPurchaseFlow(activity, s, n, onIabPurchaseFinishedListener, "");
    }
    
    public void launchPurchaseFlow(final Activity activity, final String s, final int n, final OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, final String s2) {
        this.launchPurchaseFlow(activity, s, "inapp", n, onIabPurchaseFinishedListener, s2);
    }
    
    public void launchPurchaseFlow(final Activity activity, final String s, final String str, final int i, final OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, final String str2) {
        this.checkSetupDone("launchPurchaseFlow");
        this.flagStartAsync("launchPurchaseFlow");
        Log.d("IABHelper", "Purchase item request = " + s + "," + i + "," + str2);
        if (str.equals("subs") && !this.mSubscriptionsSupported) {
            this.flagEndAsync();
            final IabResult iabResult = new IabResult(-1009, "Subscriptions are not available.");
            if (onIabPurchaseFinishedListener != null) {
                onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult, null);
            }
        }
        else {
            try {
                this.logDebug("Constructing buy intent for " + s + ", item type: " + str);
                final int responseCodeFromBundle = this.getResponseCodeFromBundle(this.mService.getBuyIntent(3, this.mContext.getPackageName(), s, str, str2));
                if (responseCodeFromBundle == 0) {
                    goto Label_0296;
                }
                this.flagEndAsync();
                this.logError("Unable to buy item, Error response: " + getResponseDesc(responseCodeFromBundle));
                final IabResult iabResult2 = new IabResult(responseCodeFromBundle, "Unable to buy item");
                if (onIabPurchaseFinishedListener != null) {
                    onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult2, null);
                }
            }
            catch (IntentSender$SendIntentException ex) {
                this.logError("SendIntentException while launching purchase flow for sku " + s);
                ex.printStackTrace();
                final IabResult iabResult3 = new IabResult(-1004, "Failed to send intent.");
                if (onIabPurchaseFinishedListener != null) {
                    onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult3, null);
                }
            }
            catch (RemoteException ex2) {
                this.logError("RemoteException while launching purchase flow for sku " + s);
                ex2.printStackTrace();
                final IabResult iabResult4 = new IabResult(-1001, "Remote exception while starting purchase flow");
                if (onIabPurchaseFinishedListener != null) {
                    onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult4, null);
                }
            }
        }
    }
    
    public void launchSubscriptionPurchaseFlow(final Activity activity, final String s, final int n, final OnIabPurchaseFinishedListener onIabPurchaseFinishedListener) {
        this.launchSubscriptionPurchaseFlow(activity, s, n, onIabPurchaseFinishedListener, "");
    }
    
    public void launchSubscriptionPurchaseFlow(final Activity activity, final String s, final int n, final OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, final String s2) {
        this.launchPurchaseFlow(activity, s, "subs", n, onIabPurchaseFinishedListener, s2);
    }
    
    void logDebug(final String s) {
        if (this.mDebugLog) {
            Log.d(this.mDebugTag, s);
        }
    }
    
    void logError(final String str) {
        Log.e(this.mDebugTag, "In-app billing error: " + str);
    }
    
    void logWarn(final String str) {
        Log.w(this.mDebugTag, "In-app billing warning: " + str);
    }
    
    public Inventory queryInventory(final boolean b, final List<String> list) throws IabException {
        return this.queryInventory(b, list, null);
    }
    
    public Inventory queryInventory(final boolean b, final List<String> list, final List<String> list2) throws IabException {
        this.checkSetupDone("queryInventory");
        Inventory inventory;
        try {
            inventory = new Inventory();
            final int queryPurchases = this.queryPurchases(inventory, "inapp");
            if (queryPurchases != 0) {
                throw new IabException(queryPurchases, "Error refreshing inventory (querying owned items).");
            }
            goto Label_0062;
        }
        catch (RemoteException ex) {
            throw new IabException(-1001, "Remote exception while refreshing inventory.", (Exception)ex);
        }
        catch (JSONException ex2) {
            throw new IabException(-1002, "Error parsing JSON response while refreshing inventory.", (Exception)ex2);
        }
        if (this.mSubscriptionsSupported) {
            final int queryPurchases2 = this.queryPurchases(inventory, "subs");
            if (queryPurchases2 != 0) {
                throw new IabException(queryPurchases2, "Error refreshing inventory (querying owned subscriptions).");
            }
            if (b) {
                final int querySkuDetails = this.querySkuDetails("subs", inventory, list);
                if (querySkuDetails != 0) {
                    throw new IabException(querySkuDetails, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
        }
        return inventory;
    }
    
    public void queryInventoryAsync(final QueryInventoryFinishedListener queryInventoryFinishedListener) {
        this.queryInventoryAsync(true, null, queryInventoryFinishedListener);
    }
    
    public void queryInventoryAsync(final boolean b, final QueryInventoryFinishedListener queryInventoryFinishedListener) {
        this.queryInventoryAsync(b, null, queryInventoryFinishedListener);
    }
    
    public void queryInventoryAsync(final boolean b, final List<String> list, final QueryInventoryFinishedListener queryInventoryFinishedListener) {
        final Handler handler = new Handler();
        this.checkSetupDone("queryInventory");
        this.flagStartAsync("refresh inventory");
        new Thread(new Runnable() {
            @Override
            public void run() {
                IabResult result = new IabResult(0, "Inventory refresh successful.");
                while (true) {
                    try {
                        final Inventory queryInventory = IabHelper.this.queryInventory(b, list);
                        IabHelper.this.flagEndAsync();
                        handler.post((Runnable)new Runnable() {
                            @Override
                            public void run() {
                                queryInventoryFinishedListener.onQueryInventoryFinished(result, queryInventory);
                            }
                        });
                    }
                    catch (IabException ex) {
                        result = ex.getResult();
                        final Inventory queryInventory = null;
                        continue;
                    }
                    break;
                }
            }
        }).start();
    }
    
    int queryPurchases(final Inventory inventory, final String str) throws JSONException, RemoteException {
        this.logDebug("Querying owned items, item type: " + str);
        this.logDebug("Package name: " + this.mContext.getPackageName());
        int n = 0;
        String string = null;
        while (true) {
            this.logDebug("Calling getPurchases with continuation token: " + string);
            final Bundle purchases = this.mService.getPurchases(3, this.mContext.getPackageName(), str, string);
            final int responseCodeFromBundle = this.getResponseCodeFromBundle(purchases);
            this.logDebug("Owned items response: " + String.valueOf(responseCodeFromBundle));
            if (responseCodeFromBundle != 0) {
                this.logDebug("getPurchases() failed: " + getResponseDesc(responseCodeFromBundle));
                return responseCodeFromBundle;
            }
            if (!purchases.containsKey("INAPP_PURCHASE_ITEM_LIST") || !purchases.containsKey("INAPP_PURCHASE_DATA_LIST") || !purchases.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                this.logError("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            }
            final ArrayList stringArrayList = purchases.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            final ArrayList stringArrayList2 = purchases.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            final ArrayList stringArrayList3 = purchases.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            for (int i = 0; i < stringArrayList2.size(); ++i) {
                final String s = stringArrayList2.get(i);
                final String str2 = stringArrayList3.get(i);
                final String str3 = stringArrayList.get(i);
                if (Security.verifyPurchase(this.mSignatureBase64, s, str2)) {
                    this.logDebug("Sku is owned: " + str3);
                    final Purchase purchase = new Purchase(str, s, str2);
                    if (TextUtils.isEmpty((CharSequence)purchase.getToken())) {
                        this.logWarn("BUG: empty/null token!");
                        this.logDebug("Purchase data: " + s);
                    }
                    inventory.addPurchase(purchase);
                }
                else {
                    this.logWarn("Purchase signature verification **FAILED**. Not adding item.");
                    this.logDebug("   Purchase data: " + s);
                    this.logDebug("   Signature: " + str2);
                    n = 1;
                }
            }
            string = purchases.getString("INAPP_CONTINUATION_TOKEN");
            this.logDebug("Continuation token: " + string);
            if (!TextUtils.isEmpty((CharSequence)string)) {
                continue;
            }
            if (n != 0) {
                return -1003;
            }
            return 0;
        }
    }
    
    int querySkuDetails(final String s, final Inventory inventory, final List<String> c) throws RemoteException, JSONException {
        this.logDebug("Querying SKU details.");
        final ArrayList list = new ArrayList();
        list.addAll(inventory.getAllOwnedSkus(s));
        if (c != null) {
            list.addAll(c);
        }
        if (list.size() == 0) {
            this.logDebug("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        final Bundle bundle = new Bundle();
        bundle.putStringArrayList("ITEM_ID_LIST", list);
        final Bundle skuDetails = this.mService.getSkuDetails(3, this.mContext.getPackageName(), s, bundle);
        if (skuDetails.containsKey("DETAILS_LIST")) {
            final Iterator iterator = skuDetails.getStringArrayList("DETAILS_LIST").iterator();
            while (iterator.hasNext()) {
                final SkuDetails obj = new SkuDetails(s, iterator.next());
                this.logDebug("Got sku details: " + obj);
                inventory.addSkuDetails(obj);
            }
            return 0;
        }
        final int responseCodeFromBundle = this.getResponseCodeFromBundle(skuDetails);
        if (responseCodeFromBundle != 0) {
            this.logDebug("getSkuDetails() failed: " + getResponseDesc(responseCodeFromBundle));
            return responseCodeFromBundle;
        }
        this.logError("getSkuDetails() returned a bundle with neither an error nor a detail list.");
        return -1002;
    }
    
    public void startSetup(final OnIabSetupFinishedListener onIabSetupFinishedListener) {
        if (this.mSetupDone) {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        this.logDebug("Starting in-app billing setup.");
        this.mServiceConn = (ServiceConnection)new ServiceConnection() {
            public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
                IabHelper.this.logDebug("Billing service connected.");
                IabHelper.this.mService = IInAppBillingService.Stub.asInterface(binder);
                final String packageName = IabHelper.this.mContext.getPackageName();
                try {
                    IabHelper.this.logDebug("Checking for in-app billing 3 support.");
                    final int billingSupported = IabHelper.this.mService.isBillingSupported(3, packageName, "inapp");
                    if (billingSupported != 0) {
                        if (onIabSetupFinishedListener != null) {
                            onIabSetupFinishedListener.onIabSetupFinished(new IabResult(billingSupported, "Error checking for billing v3 support."));
                        }
                        IabHelper.this.mSubscriptionsSupported = false;
                        return;
                    }
                    IabHelper.this.logDebug("In-app billing version 3 supported for " + packageName);
                    final int billingSupported2 = IabHelper.this.mService.isBillingSupported(3, packageName, "subs");
                    if (billingSupported2 == 0) {
                        IabHelper.this.logDebug("Subscriptions AVAILABLE.");
                        IabHelper.this.mSubscriptionsSupported = true;
                    }
                    else {
                        IabHelper.this.logDebug("Subscriptions NOT AVAILABLE. Response: " + billingSupported2);
                    }
                    IabHelper.this.mSetupDone = true;
                    if (onIabSetupFinishedListener != null) {
                        onIabSetupFinishedListener.onIabSetupFinished(new IabResult(0, "Setup successful."));
                    }
                }
                catch (RemoteException ex) {
                    if (onIabSetupFinishedListener != null) {
                        onIabSetupFinishedListener.onIabSetupFinished(new IabResult(-1001, "RemoteException while setting up in-app billing."));
                    }
                    ex.printStackTrace();
                }
            }
            
            public void onServiceDisconnected(final ComponentName componentName) {
                IabHelper.this.logDebug("Billing service disconnected.");
                IabHelper.this.mService = null;
            }
        };
        final Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        if (!this.mContext.getPackageManager().queryIntentServices(intent, 0).isEmpty()) {
            this.mContext.bindService(intent, this.mServiceConn, 1);
        }
        else if (onIabSetupFinishedListener != null) {
            onIabSetupFinishedListener.onIabSetupFinished(new IabResult(3, "Billing service unavailable on device."));
        }
    }
    
    public boolean subscriptionsSupported() {
        return this.mSubscriptionsSupported;
    }
    
    public interface OnConsumeFinishedListener
    {
        void onConsumeFinished(Purchase p0, IabResult p1);
    }
    
    public interface OnConsumeMultiFinishedListener
    {
        void onConsumeMultiFinished(List<Purchase> p0, List<IabResult> p1);
    }
    
    public interface OnIabPurchaseFinishedListener
    {
        void onIabPurchaseFinished(IabResult p0, Purchase p1);
    }
    
    public interface OnIabSetupFinishedListener
    {
        void onIabSetupFinished(IabResult p0);
    }
    
    public interface QueryInventoryFinishedListener
    {
        void onQueryInventoryFinished(IabResult p0, Inventory p1);
    }
}
