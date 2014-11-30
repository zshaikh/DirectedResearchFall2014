.class public Lcom/dolphin/browser/util/dt;
.super Ljava/lang/Object;
.source "WebViewUtil.java"


# static fields
.field private static a:Z

.field private static b:Ljava/util/regex/Pattern;

.field private static c:Ljava/util/Locale;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/util/dt;->a:Z

    .line 33
    const-string v0, "<title>(\\s*.*\\s*)</title>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/dt;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 204
    const/4 v1, 0x0

    .line 208
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 211
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->buildDrawingCache(Z)V

    move v2, v0

    .line 213
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 216
    invoke-static {p1, p2, v3, v4}, Lcom/dolphin/browser/util/dt;->a(IIII)Landroid/graphics/Point;

    move-result-object v3

    .line 218
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    if-eqz v2, :cond_1

    .line 221
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :cond_1
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 224
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    if-nez p0, :cond_0

    .line 126
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getContentWidth()I

    move-result v3

    .line 114
    int-to-float v2, v3

    int-to-float v4, p1

    div-float/2addr v2, v4

    .line 115
    int-to-float v4, p2

    mul-float/2addr v2, v4

    float-to-int v4, v2

    .line 117
    :try_start_0
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getScrollY()I

    move-result v2

    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getTitleHeight()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getScale()F

    move-result v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 118
    if-gez v2, :cond_1

    .line 119
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    add-int/2addr v4, v1

    invoke-direct {v2, v5, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, p1, p2, v2}, Lcom/dolphin/browser/core/IWebView;->captureBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 118
    goto :goto_1

    .line 121
    :catch_0
    move-exception v1

    .line 122
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    :catch_1
    move-exception v1

    .line 124
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(IIII)Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 231
    if-gt p2, p0, :cond_0

    if-le p3, p1, :cond_1

    .line 232
    :cond_0
    int-to-float v0, p3

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 233
    int-to-float v1, p1

    int-to-float v2, p0

    div-float/2addr v1, v2

    .line 234
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    .line 235
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p0

    div-float/2addr v3, v4

    .line 236
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 238
    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 239
    int-to-float v1, p3

    mul-float/2addr v1, v2

    float-to-int p3, v1

    .line 240
    int-to-float v1, p3

    div-float v0, v1, v0

    float-to-int p2, v0

    .line 247
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 248
    return-object v0

    .line 242
    :cond_2
    int-to-float v1, p0

    mul-float/2addr v1, v2

    float-to-int p2, v1

    .line 243
    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int p3, v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/dolphin/browser/util/dt;->c:Ljava/util/Locale;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dolphin/browser/util/dt;->c:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    sput-object v0, Lcom/dolphin/browser/util/dt;->c:Ljava/util/Locale;

    .line 42
    invoke-static {}, Lcom/dolphin/browser/util/dt;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/dt;->d:Ljava/lang/String;

    .line 44
    :cond_1
    sget-object v0, Lcom/dolphin/browser/util/dt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/dolphin/browser/util/dt;->a:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/util/dt;->a:Z

    .line 88
    invoke-static {p0}, Lcom/dolphin/browser/util/dt;->b(Landroid/content/Context;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static b(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    if-nez p0, :cond_0

    move-object v0, v1

    .line 166
    :goto_0
    return-object v0

    .line 138
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, v0}, Lcom/dolphin/browser/core/IWebView;->getView(Z)Landroid/view/View;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    new-instance v2, Lcom/dolphin/browser/util/du;

    invoke-direct {v2, v0, p1, p2}, Lcom/dolphin/browser/util/du;-><init>(Landroid/view/View;II)V

    invoke-static {v2}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/dt;->c(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    if-nez v1, :cond_2

    .line 153
    :try_start_1
    new-instance v2, Lcom/dolphin/browser/util/dv;

    invoke-direct {v2, v0, p1, p2}, Lcom/dolphin/browser/util/dv;-><init>(Landroid/view/View;II)V

    invoke-static {v2}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 164
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "loaderror"

    const-string v4, "raw"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 53
    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    sget-object v3, Lcom/dolphin/browser/util/dt;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 67
    if-eqz v2, :cond_0

    .line 68
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    if-eqz v2, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 62
    :goto_1
    :try_start_4
    const-string v3, "WebViewHelper"

    const-string v4, "open file loaderror.html error"

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    if-eqz v2, :cond_0

    .line 68
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 70
    :catch_2
    move-exception v1

    goto :goto_0

    .line 63
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 67
    :goto_2
    if-eqz v2, :cond_0

    .line 68
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 70
    :catch_4
    move-exception v1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 67
    :goto_3
    if-eqz v2, :cond_2

    .line 68
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 71
    :cond_2
    :goto_4
    throw v0

    .line 70
    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v1

    goto :goto_4

    .line 66
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 63
    :catch_7
    move-exception v1

    goto :goto_2

    .line 61
    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;Z)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->destroy()V

    .line 104
    :cond_0
    return-void
.end method

.method private static c(Lcom/dolphin/browser/core/IWebView;II)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getWidth()I

    move-result v2

    .line 177
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getHeight()I

    move-result v3

    .line 179
    invoke-static {p1, p2, v2, v3}, Lcom/dolphin/browser/util/dt;->a(IIII)Landroid/graphics/Point;

    move-result-object v4

    .line 181
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 182
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 183
    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getScrollY()I

    move-result v6

    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getTitleHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-interface {p0}, Lcom/dolphin/browser/core/IWebView;->getScale()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 185
    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 186
    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 188
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 190
    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v2, v2

    div-float v2, v7, v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 191
    iget v2, v5, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    invoke-virtual {v1, v6}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
