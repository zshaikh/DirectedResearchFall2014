.class public Ldolphin/graphics/GraphicsUtil;
.super Ljava/lang/Object;
.source "GraphicsUtil.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static a:[Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/graphics/GraphicsUtil;->a:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Matrix;)[F
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 43
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 44
    return-object v0
.end method

.method public static createBitmap(IIILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 27
    sget-object v1, Ldolphin/graphics/GraphicsUtil;->a:[Landroid/graphics/Bitmap$Config;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 28
    sget-object v1, Ldolphin/graphics/GraphicsUtil;->a:[Landroid/graphics/Bitmap$Config;

    aget-object v1, v1, p0

    .line 30
    :goto_0
    if-nez v1, :cond_0

    .line 37
    :goto_1
    return-object v0

    .line 33
    :cond_0
    :try_start_0
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
