.class public Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;
.super Ljava/lang/Object;
.source "IMWrapperFunctions.java"


# static fields
.field private static final FIELD_AXIS_SIZE:Ljava/lang/String; = "AXIS_SIZE"

.field private static final FIELD_AXIS_X:Ljava/lang/String; = "AXIS_X"

.field private static final FIELD_AXIS_Y:Ljava/lang/String; = "AXIS_Y"

.field private static final FIELD_CONFIG_SCREEN_SIZE:Ljava/lang/String; = "CONFIG_SCREEN_SIZE"

.field private static final FIELD_CONFIG_SMALLEST_SCREEN_SIZE:Ljava/lang/String; = "CONFIG_SMALLEST_SCREEN_SIZE"

.field private static final FIELD_FILL_PARENT:Ljava/lang/String; = "FILL_PARENT"

.field private static final FIELD_MATCH_PARENT:Ljava/lang/String; = "MATCH_PARENT"

.field private static final FIELD_REVERSE_LANDSCAPE:Ljava/lang/String; = "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

.field private static final FIELD_REVERSE_PORTRAIT:Ljava/lang/String; = "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

.field private static final METHOD_GETAXISVALUE:Ljava/lang/String; = "getAxisValue"

.field private static final METHOD_GETHEIGHT:Ljava/lang/String; = "getHeight"

.field private static final METHOD_GETSIZE:Ljava/lang/String; = "getSize"

.field private static final METHOD_GETWIDTH:Ljava/lang/String; = "getWidth"

.field private static final METHOD_SET_LAYERTYPE:Ljava/lang/String; = "setLayerType"

.field private static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableHardwareAccl(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 5
    .parameter

    .prologue
    .line 248
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 249
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 259
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 254
    :catch_1
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 256
    :catch_2
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 250
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static getDisplayHeight(Landroid/view/Display;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-class v0, Landroid/view/Display;

    .line 135
    .line 137
    new-array v0, v3, [Ljava/lang/Class;

    .line 138
    const-class v1, Landroid/graphics/Point;

    aput-object v1, v0, v4

    .line 141
    :try_start_0
    const-class v1, Landroid/view/Display;

    const-string v2, "getSize"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v3

    .line 152
    :goto_0
    if-eqz v1, :cond_0

    .line 153
    :try_start_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 154
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget v0, v1, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 164
    :goto_1
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    :try_start_2
    const-class v0, Landroid/view/Display;

    .line 146
    const-string v1, "getHeight"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move v1, v4

    .line 145
    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    move-object v0, v5

    move v1, v4

    goto :goto_0

    .line 157
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    goto :goto_1

    .line 159
    :catch_2
    move-exception v0

    move v0, v4

    goto :goto_1

    .line 160
    :catch_3
    move-exception v0

    move v0, v4

    goto :goto_1

    .line 161
    :catch_4
    move-exception v0

    move v0, v4

    goto :goto_1
.end method

.method public static getDisplayWidth(Landroid/view/Display;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-class v0, Landroid/view/Display;

    .line 102
    .line 104
    new-array v0, v3, [Ljava/lang/Class;

    .line 105
    const-class v1, Landroid/graphics/Point;

    aput-object v1, v0, v4

    .line 108
    :try_start_0
    const-class v1, Landroid/view/Display;

    const-string v2, "getSize"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v3

    .line 119
    :goto_0
    if-eqz v1, :cond_0

    .line 120
    :try_start_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 121
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget v0, v1, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 131
    :goto_1
    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    const-class v0, Landroid/view/Display;

    .line 113
    const-string v1, "getWidth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move v1, v4

    .line 112
    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    move-object v0, v5

    move v1, v4

    goto :goto_0

    .line 124
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    goto :goto_1

    .line 126
    :catch_2
    move-exception v0

    move v0, v4

    goto :goto_1

    .line 127
    :catch_3
    move-exception v0

    move v0, v4

    goto :goto_1

    .line 128
    :catch_4
    move-exception v0

    move v0, v4

    goto :goto_1
.end method

.method public static getParamConfigScreenSize()I
    .locals 4

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 39
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 42
    :try_start_0
    const-string v3, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 46
    :catch_0
    move-exception v1

    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getParamConfigSmallestScreenSize()I
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 54
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 57
    :try_start_0
    const-string v3, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getParamFillParent()I
    .locals 5

    .prologue
    .line 168
    sget v0, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->a:I

    if-nez v0, :cond_1

    .line 169
    const-class v0, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;

    monitor-enter v0

    .line 170
    :try_start_0
    sget v1, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->a:I

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 172
    const-class v2, Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    const/4 v3, 0x0

    .line 175
    :try_start_1
    const-string v4, "MATCH_PARENT"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 182
    :goto_0
    if-eqz v2, :cond_0

    .line 184
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :cond_1
    sget v0, Lcom/inmobi/androidsdk/ai/container/IMWrapperFunctions;->a:I

    return v0

    .line 176
    :catch_0
    move-exception v4

    .line 178
    :try_start_4
    const-string v4, "FILL_PARENT"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v2

    goto :goto_0

    .line 179
    :catch_1
    move-exception v2

    move-object v2, v3

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 185
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static getParamLandscapeOrientation(I)I
    .locals 4
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 86
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 87
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 90
    :try_start_0
    const-string v3, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getParamPortraitOrientation(I)I
    .locals 4
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x1

    .line 68
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 69
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 70
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 73
    :try_start_0
    const-string v3, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getTapLocationX(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const-class v0, Landroid/view/MotionEvent;

    .line 213
    .line 216
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 217
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 218
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getAxisValue"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 219
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "AXIS_X"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 220
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    .line 225
    goto :goto_0
.end method

.method public static getTapLocationY(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const-class v0, Landroid/view/MotionEvent;

    .line 230
    .line 233
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 234
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 235
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getAxisValue"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 236
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "AXIS_Y"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 237
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    .line 242
    goto :goto_0
.end method

.method public static getTapSize(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const-class v0, Landroid/view/MotionEvent;

    .line 196
    .line 199
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 200
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 201
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getAxisValue"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 202
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "AXIS_SIZE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 203
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    .line 208
    goto :goto_0
.end method
