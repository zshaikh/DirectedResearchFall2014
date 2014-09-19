package com.bitrhymes.nativeutils.functions;

import android.content.*;
import android.webkit.*;
import android.view.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;
import android.graphics.*;

public class LoadWebviewWithInApp implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            final WebView contentView = new WebView((Context)freContext.getActivity());
            contentView.setWebViewClient((WebViewClient)new myWebClient());
            contentView.loadUrl(asString);
            freContext.getActivity().setContentView((View)contentView);
            return null;
        }
        catch (IllegalStateException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            ex4.printStackTrace();
            return null;
        }
    }
    
    public class myWebClient extends WebViewClient
    {
        public void onPageFinished(final WebView webView, final String s) {
            super.onPageFinished(webView, s);
        }
        
        public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
            super.onPageStarted(webView, s, bitmap);
        }
        
        public boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
            webView.loadUrl(s);
            return true;
        }
    }
}
