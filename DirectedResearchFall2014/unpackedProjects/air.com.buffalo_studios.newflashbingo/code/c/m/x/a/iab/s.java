package c.m.x.a.iab;

import android.util.*;
import java.security.spec.*;
import android.text.*;
import java.security.*;

public final class s
{
    private static PublicKey a(final String s) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(a.a(s)));
        }
        catch (NoSuchAlgorithmException cause) {
            throw new RuntimeException(cause);
        }
        catch (InvalidKeySpecException cause2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(cause2);
        }
        catch (b cause3) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            throw new IllegalArgumentException(cause3);
        }
    }
    
    public static boolean a(final String s, final String s2, final String s3) {
        if (s2 == null) {
            Log.e("IABUtil/Security", "data is null");
            return false;
        }
        if (!TextUtils.isEmpty((CharSequence)s3) && !a(a(s), s2, s3)) {
            Log.w("IABUtil/Security", "signature does not match data.");
            return false;
        }
        return true;
    }
    
    private static boolean a(final PublicKey publicKey, final String s, final String s2) {
        try {
            final Signature instance = Signature.getInstance("SHA1withRSA");
            instance.initVerify(publicKey);
            instance.update(s.getBytes());
            if (!instance.verify(a.a(s2))) {
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
        catch (b b) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            goto Label_0056;
        }
    }
}
