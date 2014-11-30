.class public Lcom/dolphin/browser/androidwebkit/d;
.super Ljava/lang/Object;
.source "MyWebSettings.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebSettings;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Field;

.field private static l:Ljava/lang/Boolean;


# instance fields
.field protected a:Landroid/webkit/WebSettings;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    const-string v1, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.mot.hw.uaprof"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string v1, "android.webkit.FrameLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-string v3, "sUAProf"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    sput-object v1, Lcom/dolphin/browser/androidwebkit/d;->c:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 55
    :cond_0
    :goto_0
    sput-object v0, Lcom/dolphin/browser/androidwebkit/d;->b:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const-string v1, "WebSettings"

    .line 61
    :try_start_2
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setFlashPluginEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/androidwebkit/d;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    :goto_1
    :try_start_3
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setWorkersEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/androidwebkit/d;->e:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    :goto_2
    :try_start_4
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setShrinksStandaloneImagesToFit"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/androidwebkit/d;->f:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    .line 82
    :goto_3
    :try_start_5
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setNeedFirstElement"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/androidwebkit/d;->g:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4

    .line 88
    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_1

    .line 90
    :try_start_6
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setPageCacheCapacity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/androidwebkit/d;->h:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    .line 98
    :cond_1
    :goto_5
    :try_start_7
    const-class v1, Landroid/webkit/WebSettings;

    const-string v3, "setEnableQuickSelection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/androidwebkit/d;->i:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    .line 103
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 105
    const-string v1, "WebSettings"

    const-string v3, "The following methods is not found in %s for compatible reason, some features might not work: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Landroid/webkit/WebSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    :cond_2
    sput-object v2, Lcom/dolphin/browser/androidwebkit/d;->l:Ljava/lang/Boolean;

    return-void

    .line 51
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 52
    :goto_7
    const-string v3, "MyWebSettings"

    invoke-static {v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 63
    :catch_1
    move-exception v1

    .line 64
    const-string v1, "setFlashPluginEnabled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 70
    :catch_2
    move-exception v1

    .line 71
    const-string v1, "setWorkersEnabled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 77
    :catch_3
    move-exception v1

    .line 78
    const-string v1, "setShrinksStandaloneImagesToFit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 84
    :catch_4
    move-exception v1

    .line 85
    const-string v1, "setNeedFirstElement"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 92
    :catch_5
    move-exception v1

    .line 93
    const-string v1, "setPageCacheCapacity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 99
    :catch_6
    move-exception v1

    .line 100
    const-string v1, "setEnableQuickSelection"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 51
    :catch_7
    move-exception v1

    goto :goto_7
.end method

.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    .line 115
    return-void
.end method

.method protected static a(Landroid/webkit/WebSettings;I)V
    .locals 5

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 185
    :try_start_0
    const-string v1, "setPageCacheCapacity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/d;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :cond_2
    :goto_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 193
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    :catch_2
    move-exception v0

    .line 197
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :catch_3
    move-exception v0

    .line 199
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Landroid/webkit/WebSettings;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/dolphin/browser/androidwebkit/d;->b(Landroid/webkit/WebSettings;Z)V

    return-void
.end method

.method private static b(Landroid/webkit/WebSettings;Z)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 252
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->k:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 254
    const-string v1, "mBuiltInZoomControls"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/d;->k:Ljava/lang/reflect/Field;

    .line 255
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->k:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 256
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/d;->l:Ljava/lang/Boolean;

    .line 259
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 261
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->k:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 262
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->k:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 264
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 268
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 269
    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 271
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 273
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/d;->l:Ljava/lang/Boolean;

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 688
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 118
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :catch_2
    move-exception v0

    .line 126
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Z)V
    .locals 5

    .prologue
    .line 163
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :catch_2
    move-exception v0

    .line 171
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Z)V
    .locals 5

    .prologue
    .line 209
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    .line 215
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :catch_2
    move-exception v0

    .line 217
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public canQuickSelection()Z
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public getAdBlockOption()I
    .locals 1

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public getAutoAlignEnabled()Z
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v0

    return v0
.end method

.method public getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v0

    return v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomErrorPageEnabled()Z
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultZoom()Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public getEnableVideoCache()Z
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public getEnableVideoPlayer()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public getExpansionSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public getLayoutAlgorithm()Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLightTouchEnabled()Z

    move-result v0

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public getNavDump()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    return v0
.end method

.method public getPluginState()Lcom/dolphin/browser/core/IWebSettings$PluginState;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public getPluginsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()Lcom/dolphin/browser/core/IWebSettings$TextSize;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/dolphin/browser/core/IWebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWebSettings()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/d;->a()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public isPrivateBrowsing()Z
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public isServerCertificateRevocationCheckEnabled()Z
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/dolphin/browser/androidwebkit/d;->j:Z

    return v0
.end method

.method public setAdBlockEnabled(Z)V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

.method public setAdBlockOption(I)V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public setAllowContentAccess(Z)V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 299
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 568
    return-void
.end method

.method public setAppCacheMaxSize(J)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 578
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public setAutoAlignEnabled(Z)V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 521
    return-void
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 531
    return-void
.end method

.method public setBrowserModeInNight(Z)V
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/dolphin/browser/androidwebkit/e;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/androidwebkit/e;-><init>(Lcom/dolphin/browser/androidwebkit/d;Z)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 674
    return-void
.end method

.method public setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public setCustomErrorPageEnabled(Z)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 583
    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 501
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 491
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public setDefaultZoom(Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;)V
    .locals 2

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 588
    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public setEnableVideoCache(Z)V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method public setEnableVideoPlayer(Z)V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 608
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 629
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 541
    return-void
.end method

.method public setJavascriptCanAccessCrossOrigin(Z)V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method public setLayoutAlgorithm(Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 401
    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 370
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 309
    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 511
    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 471
    return-void
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 481
    return-void
.end method

.method public setNativeCrashDumpFile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 733
    return-void
.end method

.method public setNavDump(Z)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 226
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 663
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-static {v0, p1}, Lcom/dolphin/browser/androidwebkit/d;->a(Landroid/webkit/WebSettings;I)V

    .line 206
    return-void
.end method

.method public setPluginState(Lcom/dolphin/browser/core/IWebSettings$PluginState;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 548
    return-void
.end method

.method public setPluginsPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method public setPrivateBrowsing(Z)V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public setRenderPriority(Lcom/dolphin/browser/core/IWebSettings$RenderPriority;)V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$RenderPriority;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$RenderPriority;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 669
    return-void
.end method

.method public setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public setSaveFormData(Z)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 319
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 332
    return-void
.end method

.method public setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setServerCertificateRevocationCheckEnabled(Z)V
    .locals 0

    .prologue
    .line 810
    iput-boolean p1, p0, Lcom/dolphin/browser/androidwebkit/d;->j:Z

    .line 811
    return-void
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 5

    .prologue
    .line 148
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :catch_2
    move-exception v0

    .line 156
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSingleExpansionSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 795
    return-void
.end method

.method public setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 390
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTextSize(Lcom/dolphin/browser/core/IWebSettings$TextSize;)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Lcom/dolphin/browser/core/IWebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 346
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 380
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgent()I

    move-result v0

    if-nez v0, :cond_0

    .line 650
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/d;->a(Ljava/lang/String;)V

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWorkersEnabled(Z)V
    .locals 5

    .prologue
    .line 133
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/d;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :catch_2
    move-exception v0

    .line 141
    const-string v1, "MyWebSettings"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/d;->a:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method
