package com.chartboost.sdk.impl;

import android.content.*;
import android.widget.*;
import android.graphics.*;
import com.chartboost.sdk.*;
import com.chartboost.sdk.Libraries.*;
import android.view.*;

public class t extends AbsoluteLayout
{
    private Matrix a;
    private Matrix b;
    private float[] c;
    private View d;
    private RelativeLayout e;
    
    public t(final Context context) {
        super(context);
        this.a = new Matrix();
        this.b = new Matrix();
        this.c = new float[2];
        this.addView((View)(this.e = new RelativeLayout(context)), (ViewGroup$LayoutParams)new AbsoluteLayout$LayoutParams(-1, -1, 0, 0));
        this.d = (View)this.e;
    }
    
    public t(final Context context, final View d) {
        super(context);
        this.a = new Matrix();
        this.b = new Matrix();
        this.c = new float[2];
        this.addView(d, (ViewGroup$LayoutParams)new AbsoluteLayout$LayoutParams(-1, -1, 0, 0));
        this.d = d;
    }
    
    public View a() {
        return this.d;
    }
    
    public void a(final View view) {
        this.a(view, new RelativeLayout$LayoutParams(-2, -2));
    }
    
    public void a(final View view, final RelativeLayout$LayoutParams relativeLayout$LayoutParams) {
        if (this.e != null) {
            this.e.addView(view, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
            return;
        }
        throw new IllegalStateException("cannot call addViewToContainer() on CBRotatableContainer that was set up with a default view");
    }
    
    protected void dispatchDraw(final Canvas p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: invokestatic    com/chartboost/sdk/Chartboost.sharedChartboost:()Lcom/chartboost/sdk/Chartboost;
        //     3: invokevirtual   com/chartboost/sdk/Chartboost.getForcedOrientationDifference:()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;
        //     6: astore_2       
        //     7: aload_2        
        //     8: invokevirtual   com/chartboost/sdk/Libraries/CBOrientation$Difference.getAsInt:()I
        //    11: istore_3       
        //    12: aload_2        
        //    13: getstatic       com/chartboost/sdk/Libraries/CBOrientation$Difference.ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;
        //    16: if_acmpne       25
        //    19: aload_0        
        //    20: aload_1        
        //    21: invokespecial   android/widget/AbsoluteLayout.dispatchDraw:(Landroid/graphics/Canvas;)V
        //    24: return         
        //    25: aload_1        
        //    26: invokevirtual   android/graphics/Canvas.save:()I
        //    29: pop            
        //    30: aload_1        
        //    31: fconst_0       
        //    32: fconst_0       
        //    33: aload_0        
        //    34: invokevirtual   com/chartboost/sdk/impl/t.getWidth:()I
        //    37: i2f            
        //    38: aload_0        
        //    39: invokevirtual   com/chartboost/sdk/impl/t.getHeight:()I
        //    42: i2f            
        //    43: getstatic       android/graphics/Region$Op.REPLACE:Landroid/graphics/Region$Op;
        //    46: invokevirtual   android/graphics/Canvas.clipRect:(FFFFLandroid/graphics/Region$Op;)Z
        //    49: pop            
        //    50: aload_0        
        //    51: invokevirtual   com/chartboost/sdk/impl/t.getParent:()Landroid/view/ViewParent;
        //    54: checkcast       Landroid/view/ViewGroup;
        //    57: astore          8
        //    59: aload           8
        //    61: invokevirtual   android/view/View.getParent:()Landroid/view/ViewParent;
        //    64: checkcast       Landroid/view/ViewGroup;
        //    67: astore          13
        //    69: aload           13
        //    71: instanceof      Landroid/widget/ScrollView;
        //    74: ifne            89
        //    77: aload           13
        //    79: instanceof      Landroid/widget/HorizontalScrollView;
        //    82: istore          14
        //    84: iload           14
        //    86: ifeq            93
        //    89: aload           13
        //    91: astore          8
        //    93: aload_0        
        //    94: invokevirtual   com/chartboost/sdk/impl/t.getLeft:()I
        //    97: aload           8
        //    99: invokevirtual   android/view/View.getScrollX:()I
        //   102: isub           
        //   103: istore          10
        //   105: aload_0        
        //   106: invokevirtual   com/chartboost/sdk/impl/t.getTop:()I
        //   109: aload           8
        //   111: invokevirtual   android/view/View.getScrollY:()I
        //   114: isub           
        //   115: istore          11
        //   117: aload_1        
        //   118: iconst_0       
        //   119: iload           10
        //   121: isub           
        //   122: i2f            
        //   123: iconst_0       
        //   124: iload           11
        //   126: isub           
        //   127: i2f            
        //   128: aload           8
        //   130: invokevirtual   android/view/View.getWidth:()I
        //   133: iload           10
        //   135: isub           
        //   136: i2f            
        //   137: aload           8
        //   139: invokevirtual   android/view/View.getHeight:()I
        //   142: iload           11
        //   144: isub           
        //   145: i2f            
        //   146: getstatic       android/graphics/Region$Op.INTERSECT:Landroid/graphics/Region$Op;
        //   149: invokevirtual   android/graphics/Canvas.clipRect:(FFFFLandroid/graphics/Region$Op;)Z
        //   152: pop            
        //   153: aload_1        
        //   154: aload_0        
        //   155: invokevirtual   com/chartboost/sdk/impl/t.getWidth:()I
        //   158: i2f            
        //   159: fconst_2       
        //   160: fdiv           
        //   161: aload_0        
        //   162: invokevirtual   com/chartboost/sdk/impl/t.getHeight:()I
        //   165: i2f            
        //   166: fconst_2       
        //   167: fdiv           
        //   168: invokevirtual   android/graphics/Canvas.translate:(FF)V
        //   171: aload_1        
        //   172: iload_3        
        //   173: i2f            
        //   174: invokevirtual   android/graphics/Canvas.rotate:(F)V
        //   177: aload_2        
        //   178: invokevirtual   com/chartboost/sdk/Libraries/CBOrientation$Difference.isOdd:()Z
        //   181: ifeq            234
        //   184: aload_1        
        //   185: aload_0        
        //   186: invokevirtual   com/chartboost/sdk/impl/t.getHeight:()I
        //   189: ineg           
        //   190: i2f            
        //   191: fconst_2       
        //   192: fdiv           
        //   193: aload_0        
        //   194: invokevirtual   com/chartboost/sdk/impl/t.getWidth:()I
        //   197: ineg           
        //   198: i2f            
        //   199: fconst_2       
        //   200: fdiv           
        //   201: invokevirtual   android/graphics/Canvas.translate:(FF)V
        //   204: aload_0        
        //   205: aload_1        
        //   206: invokevirtual   android/graphics/Canvas.getMatrix:()Landroid/graphics/Matrix;
        //   209: putfield        com/chartboost/sdk/impl/t.a:Landroid/graphics/Matrix;
        //   212: aload_0        
        //   213: getfield        com/chartboost/sdk/impl/t.a:Landroid/graphics/Matrix;
        //   216: aload_0        
        //   217: getfield        com/chartboost/sdk/impl/t.b:Landroid/graphics/Matrix;
        //   220: invokevirtual   android/graphics/Matrix.invert:(Landroid/graphics/Matrix;)Z
        //   223: pop            
        //   224: aload_0        
        //   225: aload_1        
        //   226: invokespecial   android/widget/AbsoluteLayout.dispatchDraw:(Landroid/graphics/Canvas;)V
        //   229: aload_1        
        //   230: invokevirtual   android/graphics/Canvas.restore:()V
        //   233: return         
        //   234: aload_1        
        //   235: aload_0        
        //   236: invokevirtual   com/chartboost/sdk/impl/t.getWidth:()I
        //   239: ineg           
        //   240: i2f            
        //   241: fconst_2       
        //   242: fdiv           
        //   243: aload_0        
        //   244: invokevirtual   com/chartboost/sdk/impl/t.getHeight:()I
        //   247: ineg           
        //   248: i2f            
        //   249: fconst_2       
        //   250: fdiv           
        //   251: invokevirtual   android/graphics/Canvas.translate:(FF)V
        //   254: goto            204
        //   257: astore          6
        //   259: goto            153
        //   262: astore          9
        //   264: goto            93
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  50     59     257    262    Ljava/lang/Exception;
        //  59     84     262    267    Ljava/lang/Exception;
        //  93     153    257    262    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0089:
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
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        if (Chartboost.sharedChartboost().getForcedOrientationDifference() == CBOrientation.Difference.ANGLE_0) {
            return super.dispatchTouchEvent(motionEvent);
        }
        final float[] c = this.c;
        c[0] = motionEvent.getRawX();
        c[1] = motionEvent.getRawY();
        this.b.mapPoints(c);
        motionEvent.setLocation(c[0], c[1]);
        return super.dispatchTouchEvent(motionEvent);
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd()) {
            super.onMeasure(n2, n);
            this.setMeasuredDimension(this.getMeasuredHeight(), this.getMeasuredWidth());
            return;
        }
        super.onMeasure(n, n2);
    }
    
    public void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        final CBOrientation.Difference forcedOrientationDifference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        final ViewGroup$LayoutParams layoutParams = this.d.getLayoutParams();
        int width;
        if (forcedOrientationDifference.isOdd()) {
            width = n2;
        }
        else {
            width = n;
        }
        layoutParams.width = width;
        int height;
        if (forcedOrientationDifference.isOdd()) {
            height = n;
        }
        else {
            height = n2;
        }
        layoutParams.height = height;
        this.d.setLayoutParams(layoutParams);
        this.d.measure(View$MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View$MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        this.d.layout(0, 0, layoutParams.width, layoutParams.height);
    }
}
