package com.bitrhymes.iab.util;

import android.util.*;
import java.security.spec.*;
import java.security.*;
import android.text.*;

public class Security
{
    private static final String KEY_FACTORY_ALGORITHM = "RSA";
    private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final String TAG = "IABUtil/Security";
    
    public static PublicKey generatePublicKey(final String s) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(s)));
        }
        catch (NoSuchAlgorithmException cause) {
            throw new RuntimeException(cause);
        }
        catch (InvalidKeySpecException cause2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(cause2);
        }
        catch (Base64DecoderException cause3) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            throw new IllegalArgumentException(cause3);
        }
    }
    
    public static boolean verify(final PublicKey publicKey, final String s, final String s2) {
        try {
            final Signature instance = Signature.getInstance("SHA1withRSA");
            instance.initVerify(publicKey);
            instance.update(s.getBytes());
            if (!instance.verify(Base64.decode(s2))) {
                Log.e("IABUtil/Security", "Signature verification failed.");
                return false;
            }
            return true;
        }
        catch (NoSuchAlgorithmException ex) {
            Log.e("IABUtil/Security", "NoSuchAlgorithmException.");
        }
        catch (InvalidKeyException ex2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            goto Label_0056;
        }
        catch (SignatureException ex3) {
            Log.e("IABUtil/Security", "Signature exception.");
            goto Label_0056;
        }
        catch (Base64DecoderException ex4) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            goto Label_0056;
        }
    }
    
    public static boolean verifyPurchase(final String s, final String s2, final String s3) {
        if (s2 == null) {
            Log.e("IABUtil/Security", "data is null");
            return false;
        }
        if (!TextUtils.isEmpty((CharSequence)s3) && !verify(generatePublicKey(s), s2, s3)) {
            Log.w("IABUtil/Security", "signature does not match data.");
            return false;
        }
        return true;
    }
}
