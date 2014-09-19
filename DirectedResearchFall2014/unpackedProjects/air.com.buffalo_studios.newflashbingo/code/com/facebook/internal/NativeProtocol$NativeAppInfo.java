package com.facebook.internal;

import android.content.*;
import android.os.*;
import android.content.pm.*;

abstract class NativeProtocol$NativeAppInfo
{
    protected abstract String getPackage();
    
    protected abstract String getSignature();
    
    public boolean validateSignature(final Context context, final String s) {
        final String brand = Build.BRAND;
        final int flags = context.getApplicationInfo().flags;
        if (brand.startsWith("generic") && (flags & 0x2) != 0x0) {
            return true;
        }
        while (true) {
            while (true) {
                int n;
                try {
                    final Signature[] signatures = context.getPackageManager().getPackageInfo(s, 64).signatures;
                    final int length = signatures.length;
                    n = 0;
                    if (n >= length) {
                        break;
                    }
                    if (signatures[n].toCharsString().equals(this.getSignature())) {
                        return true;
                    }
                }
                catch (PackageManager$NameNotFoundException ex) {
                    return false;
                }
                ++n;
                continue;
            }
        }
        return false;
    }
}
