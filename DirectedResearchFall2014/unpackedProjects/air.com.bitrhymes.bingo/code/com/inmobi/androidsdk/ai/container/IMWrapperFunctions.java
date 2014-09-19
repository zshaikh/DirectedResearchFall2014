package com.inmobi.androidsdk.ai.container;

import android.graphics.*;
import android.content.pm.*;
import java.lang.reflect.*;
import android.view.*;

public class IMWrapperFunctions
{
    private static final String FIELD_AXIS_SIZE = "AXIS_SIZE";
    private static final String FIELD_AXIS_X = "AXIS_X";
    private static final String FIELD_AXIS_Y = "AXIS_Y";
    private static final String FIELD_CONFIG_SCREEN_SIZE = "CONFIG_SCREEN_SIZE";
    private static final String FIELD_CONFIG_SMALLEST_SCREEN_SIZE = "CONFIG_SMALLEST_SCREEN_SIZE";
    private static final String FIELD_FILL_PARENT = "FILL_PARENT";
    private static final String FIELD_MATCH_PARENT = "MATCH_PARENT";
    private static final String FIELD_REVERSE_LANDSCAPE = "SCREEN_ORIENTATION_REVERSE_LANDSCAPE";
    private static final String FIELD_REVERSE_PORTRAIT = "SCREEN_ORIENTATION_REVERSE_PORTRAIT";
    private static final String METHOD_GETAXISVALUE = "getAxisValue";
    private static final String METHOD_GETHEIGHT = "getHeight";
    private static final String METHOD_GETSIZE = "getSize";
    private static final String METHOD_GETWIDTH = "getWidth";
    private static final String METHOD_SET_LAYERTYPE = "setLayerType";
    private static int a;
    
    public static void disableHardwareAccl(final IMWebView obj) {
        try {
            obj.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(obj, 1, null);
        }
        catch (IllegalArgumentException ex) {
            ex.printStackTrace();
        }
        catch (IllegalAccessException ex2) {
            ex2.printStackTrace();
        }
        catch (InvocationTargetException ex3) {
            ex3.printStackTrace();
        }
        catch (NoSuchMethodException ex4) {}
    }
    
    public static int getDisplayHeight(final Display obj) {
        final Class[] parameterTypes = { Point.class };
        Label_0098: {
            Method method;
            while (true) {
                try {
                    method = Display.class.getMethod("getSize", (Class<?>[])parameterTypes);
                    final boolean b = true;
                    if (b) {
                        final Point point = new Point();
                        final Method method2 = method;
                        final Display display = obj;
                        final int n = 1;
                        final Object[] array = new Object[n];
                        final int n2 = 0;
                        final Point point2 = point;
                        array[n2] = point2;
                        method2.invoke(display, array);
                        final Point point3 = point;
                        final int y = point3.y;
                        return y;
                    }
                    break Label_0098;
                }
                catch (NoSuchMethodException ex) {
                    try {
                        method = Display.class.getMethod("getHeight", (Class<?>[])null);
                        final boolean b = false;
                    }
                    catch (NoSuchMethodException ex2) {
                        method = null;
                        final boolean b = false;
                    }
                    continue;
                }
                break;
            }
            try {
                final Point point = new Point();
                final Method method2 = method;
                final Display display = obj;
                final int n = 1;
                final Object[] array = new Object[n];
                final int n2 = 0;
                final Point point2 = point;
                array[n2] = point2;
                method2.invoke(display, array);
                final Point point3 = point;
                final int y2;
                final int y = y2 = point3.y;
                return y2;
                return (int)method.invoke(obj, (Object[])null);
            }
            catch (IllegalArgumentException ex3) {
                return 0;
            }
            catch (IllegalAccessException ex4) {
                return 0;
            }
            catch (InvocationTargetException ex5) {
                return 0;
            }
        }
    }
    
    public static int getDisplayWidth(final Display obj) {
        final Class[] parameterTypes = { Point.class };
        Label_0098: {
            Method method;
            while (true) {
                try {
                    method = Display.class.getMethod("getSize", (Class<?>[])parameterTypes);
                    final boolean b = true;
                    if (b) {
                        final Point point = new Point();
                        final Method method2 = method;
                        final Display display = obj;
                        final int n = 1;
                        final Object[] array = new Object[n];
                        final int n2 = 0;
                        final Point point2 = point;
                        array[n2] = point2;
                        method2.invoke(display, array);
                        final Point point3 = point;
                        final int x = point3.x;
                        return x;
                    }
                    break Label_0098;
                }
                catch (NoSuchMethodException ex) {
                    try {
                        method = Display.class.getMethod("getWidth", (Class<?>[])null);
                        final boolean b = false;
                    }
                    catch (NoSuchMethodException ex2) {
                        method = null;
                        final boolean b = false;
                    }
                    continue;
                }
                break;
            }
            try {
                final Point point = new Point();
                final Method method2 = method;
                final Display display = obj;
                final int n = 1;
                final Object[] array = new Object[n];
                final int n2 = 0;
                final Point point2 = point;
                array[n2] = point2;
                method2.invoke(display, array);
                final Point point3 = point;
                final int x2;
                final int x = x2 = point3.x;
                return x2;
                return (int)method.invoke(obj, (Object[])null);
            }
            catch (IllegalArgumentException ex3) {
                return 0;
            }
            catch (IllegalAccessException ex4) {
                return 0;
            }
            catch (InvocationTargetException ex5) {
                return 0;
            }
        }
    }
    
    public static int getParamConfigScreenSize() {
        final ActivityInfo obj = new ActivityInfo();
        try {
            final Field field = ActivityInfo.class.getField("CONFIG_SCREEN_SIZE");
            int int1 = 0;
            if (field != null) {
                int1 = field.getInt(obj);
            }
            return int1;
        }
        catch (Exception ex) {
            return 0;
        }
        catch (NoSuchFieldException ex2) {
            return 0;
        }
    }
    
    public static int getParamConfigSmallestScreenSize() {
        final ActivityInfo obj = new ActivityInfo();
        try {
            final Field field = ActivityInfo.class.getField("CONFIG_SMALLEST_SCREEN_SIZE");
            int int1 = 0;
            if (field != null) {
                int1 = field.getInt(obj);
            }
            return int1;
        }
        catch (Exception ex) {
            return 0;
        }
        catch (NoSuchFieldException ex2) {
            return 0;
        }
    }
    
    public static int getParamFillParent() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/inmobi/androidsdk/ai/container/IMWrapperFunctions.a:I
        //     3: ifne            55
        //     6: ldc             Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;.class
        //     8: monitorenter   
        //     9: getstatic       com/inmobi/androidsdk/ai/container/IMWrapperFunctions.a:I
        //    12: ifne            52
        //    15: new             Landroid/view/ViewGroup$LayoutParams;
        //    18: dup            
        //    19: iconst_1       
        //    20: iconst_1       
        //    21: invokespecial   android/view/ViewGroup$LayoutParams.<init>:(II)V
        //    24: astore_1       
        //    25: ldc             Landroid/view/ViewGroup$LayoutParams;.class
        //    27: ldc             "MATCH_PARENT"
        //    29: invokevirtual   java/lang/Class.getField:(Ljava/lang/String;)Ljava/lang/reflect/Field;
        //    32: astore          7
        //    34: aload           7
        //    36: astore          4
        //    38: aload           4
        //    40: ifnull          52
        //    43: aload           4
        //    45: aload_1        
        //    46: invokevirtual   java/lang/reflect/Field.getInt:(Ljava/lang/Object;)I
        //    49: putstatic       com/inmobi/androidsdk/ai/container/IMWrapperFunctions.a:I
        //    52: ldc             Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;.class
        //    54: monitorexit    
        //    55: getstatic       com/inmobi/androidsdk/ai/container/IMWrapperFunctions.a:I
        //    58: ireturn        
        //    59: astore_2       
        //    60: ldc             Landroid/view/ViewGroup$LayoutParams;.class
        //    62: ldc             "FILL_PARENT"
        //    64: invokevirtual   java/lang/Class.getField:(Ljava/lang/String;)Ljava/lang/reflect/Field;
        //    67: astore          6
        //    69: aload           6
        //    71: astore          4
        //    73: goto            38
        //    76: astore_3       
        //    77: aconst_null    
        //    78: astore          4
        //    80: goto            38
        //    83: astore_0       
        //    84: ldc             Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;.class
        //    86: monitorexit    
        //    87: aload_0        
        //    88: athrow         
        //    89: astore          5
        //    91: goto            52
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  9      25     83     89     Any
        //  25     34     59     83     Ljava/lang/NoSuchFieldException;
        //  25     34     83     89     Any
        //  43     52     89     94     Ljava/lang/Exception;
        //  43     52     83     89     Any
        //  52     55     83     89     Any
        //  60     69     76     83     Ljava/lang/NoSuchFieldException;
        //  60     69     83     89     Any
        //  84     87     83     89     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0052:
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
    
    public static int getParamLandscapeOrientation(final int n) {
        int int1 = 0;
        if (n != 3) {
            return int1;
        }
        final ActivityInfo obj = new ActivityInfo();
        try {
            final Field field = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_LANDSCAPE");
            int1 = 0;
            if (field != null) {
                int1 = field.getInt(obj);
            }
            return int1;
        }
        catch (Exception ex) {
            return 0;
        }
        catch (NoSuchFieldException ex2) {
            return 0;
        }
    }
    
    public static int getParamPortraitOrientation(final int n) {
        int int1 = 1;
        if (n != 2) {
            return int1;
        }
        final ActivityInfo obj = new ActivityInfo();
        try {
            final Field field = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_PORTRAIT");
            if (field != null) {
                int1 = field.getInt(obj);
            }
            return int1;
        }
        catch (Exception ex) {
            return int1;
        }
        catch (NoSuchFieldException ex2) {
            return int1;
        }
    }
    
    public static String getTapLocationX(final MotionEvent obj) {
        try {
            return MotionEvent.class.getMethod("getAxisValue", Integer.TYPE).invoke(obj, MotionEvent.class.getField("AXIS_X").getInt(null)).toString();
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public static String getTapLocationY(final MotionEvent obj) {
        try {
            return MotionEvent.class.getMethod("getAxisValue", Integer.TYPE).invoke(obj, MotionEvent.class.getField("AXIS_Y").getInt(null)).toString();
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public static String getTapSize(final MotionEvent obj) {
        try {
            return MotionEvent.class.getMethod("getAxisValue", Integer.TYPE).invoke(obj, MotionEvent.class.getField("AXIS_SIZE").getInt(null)).toString();
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
