.class Lcom/dolphin/browser/androidwebkit/WebViewV8;
.super Lcom/dolphin/browser/androidwebkit/WebViewV9_10;
.source "WebViewV8.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Ljava/lang/reflect/Field;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private I()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 74
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "commitCopy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->d:Ljava/lang/reflect/Method;

    .line 75
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 77
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v0

    move v0, v1

    .line 80
    goto :goto_0
.end method

.method private J()Z
    .locals 2

    .prologue
    .line 87
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 88
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mShiftIsPressed"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    .line 90
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 100
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 101
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mShiftIsPressed"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    .line 103
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public D()Z
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV8;->J()Z

    move-result v0

    return v0
.end method

.method public E()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV8;->emulateShiftHeld()V

    .line 175
    return-void
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV8;->I()Z

    move-result v0

    return v0
.end method

.method protected G()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebViewV8;->d(Z)V

    .line 123
    return-void
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    const-string v1, "mWebViewCore"

    .line 187
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebViewCore"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    const-string v2, "MyWebView"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(IIII)V
    .locals 5

    .prologue
    .line 144
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 145
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "nativeMoveSelection"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->g:Ljava/lang/reflect/Method;

    .line 147
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 150
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebViewV8;->b(Z)V

    .line 152
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/androidwebkit/WebViewV8;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 2

    .prologue
    .line 129
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->f:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 130
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mExtendSelection"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->f:Ljava/lang/reflect/Field;

    .line 132
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected c(Z)V
    .locals 2

    .prologue
    .line 162
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->h:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 163
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mTouchSelection"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->h:Ljava/lang/reflect/Field;

    .line 165
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 167
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV8;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public setOverScrollMode(I)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
