.class Lcom/dolphin/browser/androidwebkit/WebViewV11;
.super Lcom/dolphin/browser/androidwebkit/MyWebView;
.source "WebViewV11.java"


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

.field private static j:Ljava/lang/reflect/Field;

.field private static k:Z

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/androidwebkit/MyWebView;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/androidwebkit/MyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/androidwebkit/MyWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private I()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 133
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->i:Z

    if-nez v0, :cond_0

    .line 134
    sput-boolean v1, Lcom/dolphin/browser/androidwebkit/WebViewV11;->i:Z

    .line 136
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mSelectingText"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->h:Ljava/lang/reflect/Field;

    .line 137
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->h:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 146
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 151
    :goto_1
    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v0, "MyWebView"

    const-string v1, "Field \'mSelectingText\' not found."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    const-string v1, "MyWebView"

    const-string v2, "getSelectingText"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    :catch_2
    move-exception v0

    .line 148
    const-string v1, "MyWebView"

    const-string v2, "getSelectingText"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 85
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->g:Z

    if-nez v0, :cond_0

    .line 86
    sput-boolean v1, Lcom/dolphin/browser/androidwebkit/WebViewV11;->g:Z

    .line 88
    :try_start_0
    const-string v0, "android.webkit.ViewManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
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

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->f:Ljava/lang/reflect/Method;

    .line 90
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 97
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->f:Ljava/lang/reflect/Method;

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

    .line 102
    :goto_1
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "MyWebView"

    const-string v2, "hitTest"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    const-string v1, "MyWebView"

    const-string v2, "hitTest"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public C()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 203
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->m:Z

    if-nez v0, :cond_0

    .line 204
    sput-boolean v1, Lcom/dolphin/browser/androidwebkit/WebViewV11;->m:Z

    .line 206
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "notifyFindDialogDismissed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->l:Ljava/lang/reflect/Method;

    .line 207
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 214
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :cond_1
    :goto_1
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->I()Z

    move-result v0

    return v0
.end method

.method public E()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->selectText()Z

    .line 192
    return-void
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->c:Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;

    invoke-virtual {v0}, Lcom/dolphin/browser/androidwebkit/MyWebViewWrapper;->copySelection()Z

    move-result v0

    return v0
.end method

.method protected G()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected H()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    const-string v1, "mWebViewCore"

    .line 294
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

    .line 299
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 300
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    const-string v2, "MyWebView"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(IIII)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/dolphin/browser/core/ValueCallback;)V
    .locals 1
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
    .line 276
    new-instance v0, Lcom/dolphin/browser/androidwebkit/ev;

    invoke-direct {v0, p0, p3}, Lcom/dolphin/browser/androidwebkit/ev;-><init>(Lcom/dolphin/browser/androidwebkit/WebViewV11;Lcom/dolphin/browser/core/ValueCallback;)V

    invoke-super {p0, p1, p2, v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 286
    return-void
.end method

.method protected a(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 107
    sget-boolean v2, Lcom/dolphin/browser/androidwebkit/WebViewV11;->e:Z

    if-nez v2, :cond_0

    .line 108
    sput-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->e:Z

    .line 110
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "mViewManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV11;->d:Ljava/lang/reflect/Field;

    .line 111
    sget-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV11;->d:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    sget-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV11;->d:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 118
    :try_start_1
    sget-object v2, Lcom/dolphin/browser/androidwebkit/WebViewV11;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    invoke-direct {p0, v2, p1, p2}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->a(Ljava/lang/Object;II)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    :goto_1
    return v0

    .line 112
    :catch_0
    move-exception v2

    .line 113
    const-string v3, "MyWebView"

    const-string v4, "isHitPlugin"

    invoke-static {v3, v4, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    const-string v2, "MyWebView"

    const-string v3, "isHitPlugin"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v0, v1

    .line 124
    goto :goto_1
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public i()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 240
    const/4 v1, 0x0

    .line 242
    sget-boolean v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->k:Z

    if-nez v0, :cond_0

    .line 243
    sput-boolean v2, Lcom/dolphin/browser/androidwebkit/WebViewV11;->k:Z

    .line 246
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v2, "mOverlayVerticalScrollbar"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->j:Ljava/lang/reflect/Field;

    .line 247
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->j:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :cond_0
    :goto_0
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->j:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 257
    :try_start_1
    sget-object v0, Lcom/dolphin/browser/androidwebkit/WebViewV11;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    .line 267
    :goto_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->isVerticalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->getWidth()I

    move-result v0

    .line 270
    :goto_2
    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v2, "MyWebView"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    const-string v2, "MyWebView"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 258
    :catch_2
    move-exception v0

    .line 259
    const-string v2, "MyWebView"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 262
    goto :goto_1

    .line 260
    :catch_3
    move-exception v0

    .line 261
    const-string v2, "MyWebView"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 262
    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->overlayVerticalScrollbar()Z

    move-result v0

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->e()Lcom/dolphin/browser/core/IWebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/IWebView$HitTestResult;->getType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/androidwebkit/WebViewV11;->d()Lcom/dolphin/browser/core/IBrowserSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->getEnableLongPressMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-super {p0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->performLongClick()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string v1, "MyWebView"

    const-string v2, "performLongClick"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected u()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
