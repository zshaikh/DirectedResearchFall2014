package com.facebook;

import android.os.*;
import java.io.*;
import org.json.*;
import android.content.*;
import java.util.*;
import com.facebook.internal.*;

public class SharedPreferencesTokenCachingStrategy extends TokenCachingStrategy
{
    private static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    private static final String JSON_VALUE = "value";
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    private static final String JSON_VALUE_TYPE = "valueType";
    private static final String TAG;
    private static final String TYPE_BOOLEAN = "bool";
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    private static final String TYPE_BYTE = "byte";
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    private static final String TYPE_CHAR = "char";
    private static final String TYPE_CHAR_ARRAY = "char[]";
    private static final String TYPE_DOUBLE = "double";
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    private static final String TYPE_ENUM = "enum";
    private static final String TYPE_FLOAT = "float";
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    private static final String TYPE_INTEGER = "int";
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    private static final String TYPE_LONG = "long";
    private static final String TYPE_LONG_ARRAY = "long[]";
    private static final String TYPE_SHORT = "short";
    private static final String TYPE_SHORT_ARRAY = "short[]";
    private static final String TYPE_STRING = "string";
    private static final String TYPE_STRING_LIST = "stringList";
    private SharedPreferences cache;
    private String cacheKey;
    
    static {
        TAG = SharedPreferencesTokenCachingStrategy.class.getSimpleName();
    }
    
    public SharedPreferencesTokenCachingStrategy(final Context context) {
        this(context, null);
    }
    
    public SharedPreferencesTokenCachingStrategy(Context context, final String s) {
        super();
        Validate.notNull(context, "context");
        String cacheKey;
        if (Utility.isNullOrEmpty(s)) {
            cacheKey = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        }
        else {
            cacheKey = s;
        }
        this.cacheKey = cacheKey;
        final Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        this.cache = context.getSharedPreferences(this.cacheKey, 0);
    }
    
    private void deserializeKey(final String s, final Bundle bundle) throws JSONException {
        final JSONObject jsonObject = new JSONObject(this.cache.getString(s, "{}"));
        final String string = jsonObject.getString("valueType");
        if (string.equals("bool")) {
            bundle.putBoolean(s, jsonObject.getBoolean("value"));
        }
        else {
            if (string.equals("bool[]")) {
                final JSONArray jsonArray = jsonObject.getJSONArray("value");
                final boolean[] array = new boolean[jsonArray.length()];
                for (int i = 0; i < array.length; ++i) {
                    array[i] = jsonArray.getBoolean(i);
                }
                bundle.putBooleanArray(s, array);
                return;
            }
            if (string.equals("byte")) {
                bundle.putByte(s, (byte)jsonObject.getInt("value"));
                return;
            }
            if (string.equals("byte[]")) {
                final JSONArray jsonArray2 = jsonObject.getJSONArray("value");
                final byte[] array2 = new byte[jsonArray2.length()];
                for (int j = 0; j < array2.length; ++j) {
                    array2[j] = (byte)jsonArray2.getInt(j);
                }
                bundle.putByteArray(s, array2);
                return;
            }
            if (string.equals("short")) {
                bundle.putShort(s, (short)jsonObject.getInt("value"));
                return;
            }
            if (string.equals("short[]")) {
                final JSONArray jsonArray3 = jsonObject.getJSONArray("value");
                final short[] array3 = new short[jsonArray3.length()];
                for (int k = 0; k < array3.length; ++k) {
                    array3[k] = (short)jsonArray3.getInt(k);
                }
                bundle.putShortArray(s, array3);
                return;
            }
            if (string.equals("int")) {
                bundle.putInt(s, jsonObject.getInt("value"));
                return;
            }
            if (string.equals("int[]")) {
                final JSONArray jsonArray4 = jsonObject.getJSONArray("value");
                final int[] array4 = new int[jsonArray4.length()];
                for (int l = 0; l < array4.length; ++l) {
                    array4[l] = jsonArray4.getInt(l);
                }
                bundle.putIntArray(s, array4);
                return;
            }
            if (string.equals("long")) {
                bundle.putLong(s, jsonObject.getLong("value"));
                return;
            }
            if (string.equals("long[]")) {
                final JSONArray jsonArray5 = jsonObject.getJSONArray("value");
                final long[] array5 = new long[jsonArray5.length()];
                for (int n = 0; n < array5.length; ++n) {
                    array5[n] = jsonArray5.getLong(n);
                }
                bundle.putLongArray(s, array5);
                return;
            }
            if (string.equals("float")) {
                bundle.putFloat(s, (float)jsonObject.getDouble("value"));
                return;
            }
            if (string.equals("float[]")) {
                final JSONArray jsonArray6 = jsonObject.getJSONArray("value");
                final float[] array6 = new float[jsonArray6.length()];
                for (int n2 = 0; n2 < array6.length; ++n2) {
                    array6[n2] = (float)jsonArray6.getDouble(n2);
                }
                bundle.putFloatArray(s, array6);
                return;
            }
            if (string.equals("double")) {
                bundle.putDouble(s, jsonObject.getDouble("value"));
                return;
            }
            if (string.equals("double[]")) {
                final JSONArray jsonArray7 = jsonObject.getJSONArray("value");
                final double[] array7 = new double[jsonArray7.length()];
                for (int n3 = 0; n3 < array7.length; ++n3) {
                    array7[n3] = jsonArray7.getDouble(n3);
                }
                bundle.putDoubleArray(s, array7);
                return;
            }
            if (string.equals("char")) {
                final String string2 = jsonObject.getString("value");
                if (string2 != null && string2.length() == 1) {
                    bundle.putChar(s, string2.charAt(0));
                }
            }
            else {
                if (string.equals("char[]")) {
                    final JSONArray jsonArray8 = jsonObject.getJSONArray("value");
                    final char[] array8 = new char[jsonArray8.length()];
                    for (int n4 = 0; n4 < array8.length; ++n4) {
                        final String string3 = jsonArray8.getString(n4);
                        if (string3 != null && string3.length() == 1) {
                            array8[n4] = string3.charAt(0);
                        }
                    }
                    bundle.putCharArray(s, array8);
                    return;
                }
                if (string.equals("string")) {
                    bundle.putString(s, jsonObject.getString("value"));
                    return;
                }
                if (string.equals("stringList")) {
                    final JSONArray jsonArray9 = jsonObject.getJSONArray("value");
                    final int length = jsonArray9.length();
                    final ArrayList list = new ArrayList<String>(length);
                    for (int index = 0; index < length; ++index) {
                        final Object value = jsonArray9.get(index);
                        String element;
                        if (value == JSONObject.NULL) {
                            element = null;
                        }
                        else {
                            element = (String)value;
                        }
                        list.add(index, element);
                    }
                    bundle.putStringArrayList(s, list);
                    return;
                }
                if (string.equals("enum")) {
                    try {
                        bundle.putSerializable(s, Enum.valueOf(Class.forName(jsonObject.getString("enumType")), jsonObject.getString("value")));
                    }
                    catch (ClassNotFoundException ex) {}
                    catch (IllegalArgumentException ex2) {}
                }
            }
        }
    }
    
    private void serializeKey(final String s, final Bundle bundle, final SharedPreferences$Editor sharedPreferences$Editor) throws JSONException {
        final Object value = bundle.get(s);
        if (value != null) {
            JSONArray jsonArray = null;
            final JSONObject jsonObject = new JSONObject();
            String s2;
            if (value instanceof Byte) {
                s2 = "byte";
                jsonObject.put("value", (int)value);
            }
            else if (value instanceof Short) {
                s2 = "short";
                jsonObject.put("value", (int)value);
                jsonArray = null;
            }
            else if (value instanceof Integer) {
                s2 = "int";
                jsonObject.put("value", (int)value);
                jsonArray = null;
            }
            else if (value instanceof Long) {
                s2 = "long";
                jsonObject.put("value", (long)value);
                jsonArray = null;
            }
            else if (value instanceof Float) {
                s2 = "float";
                jsonObject.put("value", (double)value);
                jsonArray = null;
            }
            else if (value instanceof Double) {
                s2 = "double";
                jsonObject.put("value", (double)value);
                jsonArray = null;
            }
            else if (value instanceof Boolean) {
                s2 = "bool";
                jsonObject.put("value", (boolean)value);
                jsonArray = null;
            }
            else if (value instanceof Character) {
                s2 = "char";
                jsonObject.put("value", (Object)value.toString());
                jsonArray = null;
            }
            else if (value instanceof String) {
                s2 = "string";
                jsonObject.put("value", (Object)value);
                jsonArray = null;
            }
            else if (value instanceof Enum) {
                s2 = "enum";
                jsonObject.put("value", (Object)value.toString());
                jsonObject.put("enumType", (Object)((List<String>)value).getClass().getName());
                jsonArray = null;
            }
            else {
                jsonArray = new JSONArray();
                if (value instanceof byte[]) {
                    s2 = "byte[]";
                    final byte[] array = (byte[])value;
                    for (int length = array.length, i = 0; i < length; ++i) {
                        jsonArray.put((int)array[i]);
                    }
                }
                else if (value instanceof short[]) {
                    s2 = "short[]";
                    final short[] array2 = (short[])value;
                    for (int length2 = array2.length, j = 0; j < length2; ++j) {
                        jsonArray.put((int)array2[j]);
                    }
                }
                else if (value instanceof int[]) {
                    s2 = "int[]";
                    final int[] array3 = (int[])value;
                    for (int length3 = array3.length, k = 0; k < length3; ++k) {
                        jsonArray.put(array3[k]);
                    }
                }
                else if (value instanceof long[]) {
                    s2 = "long[]";
                    final long[] array4 = (long[])value;
                    for (int length4 = array4.length, l = 0; l < length4; ++l) {
                        jsonArray.put(array4[l]);
                    }
                }
                else if (value instanceof float[]) {
                    s2 = "float[]";
                    final float[] array5 = (float[])value;
                    for (int length5 = array5.length, n = 0; n < length5; ++n) {
                        jsonArray.put((double)array5[n]);
                    }
                }
                else if (value instanceof double[]) {
                    s2 = "double[]";
                    final double[] array6 = (double[])value;
                    for (int length6 = array6.length, n2 = 0; n2 < length6; ++n2) {
                        jsonArray.put(array6[n2]);
                    }
                }
                else if (value instanceof boolean[]) {
                    s2 = "bool[]";
                    final boolean[] array7 = (boolean[])value;
                    for (int length7 = array7.length, n3 = 0; n3 < length7; ++n3) {
                        jsonArray.put(array7[n3]);
                    }
                }
                else if (value instanceof char[]) {
                    s2 = "char[]";
                    final char[] array8 = (char[])value;
                    for (int length8 = array8.length, n4 = 0; n4 < length8; ++n4) {
                        jsonArray.put((Object)String.valueOf(array8[n4]));
                    }
                }
                else if (value instanceof List) {
                    s2 = "stringList";
                    for (final String s3 : (List<String>)value) {
                        Object null;
                        if (s3 == null) {
                            null = JSONObject.NULL;
                        }
                        else {
                            null = s3;
                        }
                        jsonArray.put(null);
                    }
                }
                else {
                    jsonArray = null;
                    s2 = null;
                }
            }
            if (s2 != null) {
                jsonObject.put("valueType", (Object)s2);
                if (jsonArray != null) {
                    jsonObject.putOpt("value", (Object)jsonArray);
                }
                sharedPreferences$Editor.putString(s, jsonObject.toString());
            }
        }
    }
    
    @Override
    public void clear() {
        this.cache.edit().clear().commit();
    }
    
    @Override
    public Bundle load() {
        final Bundle bundle = new Bundle();
        for (final String str : this.cache.getAll().keySet()) {
            try {
                this.deserializeKey(str, bundle);
            }
            catch (JSONException obj) {
                Logger.log(LoggingBehavior.CACHE, 5, SharedPreferencesTokenCachingStrategy.TAG, "Error reading cached value for key: '" + str + "' -- " + obj);
                return null;
            }
        }
        return bundle;
    }
    
    @Override
    public void save(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        final SharedPreferences$Editor edit = this.cache.edit();
        for (final String str : bundle.keySet()) {
            try {
                this.serializeKey(str, bundle, edit);
            }
            catch (JSONException obj) {
                Logger.log(LoggingBehavior.CACHE, 5, SharedPreferencesTokenCachingStrategy.TAG, "Error processing value for key: '" + str + "' -- " + obj);
                return;
            }
        }
        if (!edit.commit()) {
            Logger.log(LoggingBehavior.CACHE, 5, SharedPreferencesTokenCachingStrategy.TAG, "SharedPreferences.Editor.commit() was not successful");
        }
    }
}
