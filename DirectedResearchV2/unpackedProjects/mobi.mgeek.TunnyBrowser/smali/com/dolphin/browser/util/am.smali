.class public Lcom/dolphin/browser/util/am;
.super Ljava/lang/Object;
.source "CaptureUtil.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput v0, Lcom/dolphin/browser/util/am;->a:I

    .line 20
    sput v0, Lcom/dolphin/browser/util/am;->b:I

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 31
    sget v0, Lcom/dolphin/browser/util/am;->a:I

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 33
    const/high16 v1, 0x42b40000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/dolphin/browser/util/am;->a:I

    .line 34
    const/high16 v1, 0x42a00000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/dolphin/browser/util/am;->b:I

    .line 36
    :cond_0
    sget v0, Lcom/dolphin/browser/util/am;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v3

    .line 114
    if-nez v3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/dolphin/browser/util/am;->b(Landroid/content/Context;)I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 119
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    invoke-virtual {v3}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    .line 123
    invoke-virtual {v3}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    .line 126
    if-lez v1, :cond_0

    .line 127
    invoke-static {p0}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 132
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    if-ge v5, v0, :cond_2

    if-lez v5, :cond_2

    .line 137
    invoke-static {p0}, Lcom/dolphin/browser/util/am;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 143
    :goto_1
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 145
    invoke-virtual {v3, v4}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    .line 146
    goto :goto_0

    :cond_2
    move v0, v1

    .line 140
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;F)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    .line 152
    const/4 v0, 0x0

    .line 153
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    .line 157
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    .line 158
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    .line 161
    if-lez v2, :cond_0

    .line 162
    int-to-float v0, v3

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 163
    int-to-float v3, v0

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 164
    int-to-float v3, v4

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 165
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 169
    invoke-virtual {v1, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 172
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 98
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    .line 103
    if-lez v3, :cond_1

    .line 104
    int-to-float v4, p2

    int-to-float v3, v3

    div-float v3, v4, v3

    .line 105
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dolphin/browser/core/IWebView;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v3

    .line 56
    if-nez v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/dolphin/browser/util/am;->b(Landroid/content/Context;)I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 61
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    invoke-virtual {v3}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    .line 65
    invoke-virtual {v3}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    .line 68
    if-lez v1, :cond_0

    .line 69
    invoke-static {p0}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 74
    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_2

    invoke-interface {p1}, Lcom/dolphin/browser/core/IWebView;->getHeight()I

    move-result v0

    if-ge v5, v0, :cond_2

    if-lez v5, :cond_2

    .line 79
    invoke-static {p0}, Lcom/dolphin/browser/util/am;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 85
    :goto_1
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 87
    invoke-virtual {v3, v4}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    .line 88
    goto :goto_0

    :cond_2
    move v0, v1

    .line 82
    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/dolphin/browser/util/am;->a(Landroid/content/Context;)I

    .line 50
    sget v0, Lcom/dolphin/browser/util/am;->b:I

    return v0
.end method
