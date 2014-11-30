.class public Lcom/facebook/orca/photos/tiles/DefaultTiles;
.super Ljava/lang/Object;
.source "DefaultTiles.java"


# static fields
.field private static a:[I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4d

    const/16 v3, 0x3b

    const/16 v4, 0x59

    const/16 v5, 0x98

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/photos/tiles/DefaultTilesCache;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    .line 40
    return-void
.end method

.method private static a(Ljava/lang/String;[I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    if-nez p0, :cond_0

    .line 105
    aget v0, p1, v2

    .line 114
    :goto_0
    return v0

    .line 108
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    aget-byte v0, v0, v1

    array-length v1, p1

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 110
    aget v0, p1, v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    aget v0, p1, v2

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    aget v0, p1, v2

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 89
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 94
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 96
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 97
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 99
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 100
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 120
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 121
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 122
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:[I

    invoke-static {p1, v0}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Ljava/lang/String;[I)I

    move-result v1

    .line 51
    new-instance v2, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;

    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->THREAD:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    invoke-direct {v2, v0, v1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;-><init>(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;II)V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 55
    if-nez v0, :cond_0

    .line 56
    const v0, 0x7f020029

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0, p2, v1}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;Landroid/graphics/Bitmap;)V

    .line 62
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public b(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    .prologue
    .line 73
    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a:[I

    invoke-static {p1, v0}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Ljava/lang/String;[I)I

    move-result v1

    .line 74
    new-instance v2, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;

    sget-object v0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;->USER:Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;

    invoke-direct {v2, v0, v1, p2}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;-><init>(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Type;II)V

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 78
    if-nez v0, :cond_0

    .line 79
    const v0, 0x7f02002a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0, p2, v1}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/DefaultTiles;->c:Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;->a(Lcom/facebook/orca/photos/tiles/DefaultTilesCache$Key;Landroid/graphics/Bitmap;)V

    .line 85
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method
