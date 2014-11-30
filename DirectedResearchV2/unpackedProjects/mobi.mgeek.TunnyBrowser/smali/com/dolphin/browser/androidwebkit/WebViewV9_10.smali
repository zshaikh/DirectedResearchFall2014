.class Lcom/dolphin/browser/androidwebkit/WebViewV9_10;
.super Lcom/dolphin/browser/androidwebkit/MyWebView;
.source "WebViewV9_10.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static d:Ljava/lang/reflect/Field;

.field private static e:Z

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Z

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/MyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/MyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private I()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 127
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->i:Z

    if-nez v0, :cond_0

    .line 128
    sput-boolean v1, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->i:Z

    .line 130
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mSelectingText"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->h:Ljava/lang/reflect/Field;

    .line 131
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 138
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 143
    :goto_1
    return v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "MyWebView"

    const-string v2, "getSelectingText"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    const-string v1, "MyWebView"

    const-string v2, "getSelectingText"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 77
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->g:Z

    if-nez v0, :cond_0

    .line 78
    sput-boolean v1, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->g:Z

    .line 80
    :try_start_0
    const-string v0, "android.webkit.ViewManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    const-string v1, "hitTest"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->f:Ljava/lang/reflect/Method;

    .line 82
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 89
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 94
    :goto_1
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "MyWebView"

    const-string v2, "hitTest"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    const-string v1, "MyWebView"

    const-string v2, "hitTest"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 176
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 177
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "getWebViewCore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->k:Ljava/lang/reflect/Method;

    .line 179
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 180
    const-string v0, "android.webkit.WebViewCore"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "drawContentPicture"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Canvas;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->j:Ljava/lang/reflect/Method;

    .line 183
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 185
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 195
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->l:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 196
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "drawExtras"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Canvas;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->l:Ljava/lang/reflect/Method;

    .line 198
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    :cond_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public C()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->notifyFindDialogDismissed()V

    .line 234
    return-void
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->I()Z

    move-result v0

    return v0
.end method

.method public E()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->emulateShiftHeld()V

    .line 224
    return-void
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->copySelection()Z

    move-result v0

    return v0
.end method

.method protected G()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->notifySelectDialogDismissed()V

    .line 149
    return-void
.end method

.method protected H()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    const-string v1, "mWebViewCore"

    .line 269
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebViewCore"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 274
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    const-string v2, "MyWebView"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(IIII)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->c(Landroid/graphics/Canvas;)V

    .line 164
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dolphin/browser/core/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method protected a(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 99
    sget-boolean v2, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->e:Z

    if-nez v2, :cond_0

    .line 100
    sput-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->e:Z

    .line 102
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "mViewManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->d:Ljava/lang/reflect/Field;

    .line 103
    sget-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->d:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    sget-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->d:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 110
    :try_start_1
    sget-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    invoke-direct {p0, v2, p1, p2}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->a(Ljava/lang/Object;II)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    :goto_1
    return v0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    const-string v3, "MyWebView"

    const-string v4, "isHitPlugin"

    invoke-static {v3, v4, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 111
    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    .line 113
    const-string v2, "MyWebView"

    const-string v3, "isHitPlugin"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v0, v1

    .line 116
    goto :goto_1
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->d(Landroid/graphics/Canvas;)V

    .line 169
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->setOverScrollMode(I)V

    .line 239
    return-void
.end method

.method protected u()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV9_10;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
