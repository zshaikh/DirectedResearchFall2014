.class public Lcom/acmeaom/android/a/a/c/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/Object;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Lcom/acmeaom/android/a/a/c/c;

.field private final i:I

.field private final j:Landroid/graphics/Canvas;

.field private final k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Path;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/acmeaom/android/a/a/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/acmeaom/android/a/a/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/a/a/c/d;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->m:I

    .line 45
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->n:I

    .line 47
    sget-object v0, Lcom/acmeaom/android/a/a/c/f;->a:Lcom/acmeaom/android/a/a/c/f;

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->p:Lcom/acmeaom/android/a/a/c/f;

    .line 74
    iput-object v2, p0, Lcom/acmeaom/android/a/a/c/d;->c:Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->d:I

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->e:I

    .line 77
    sget-object v0, Lcom/acmeaom/android/a/a/c/e;->a:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->f:I

    .line 89
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->g:I

    .line 90
    sget-object v0, Lcom/acmeaom/android/a/a/c/c;->a:Lcom/acmeaom/android/a/a/c/c;

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->h:Lcom/acmeaom/android/a/a/c/c;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->i:I

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    .line 95
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->j:Landroid/graphics/Canvas;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    const/16 v1, 0x181

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 108
    :goto_1
    return-void

    .line 79
    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->f:I

    goto :goto_0

    .line 82
    :pswitch_1
    const/16 v0, 0x8

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->f:I

    goto :goto_0

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    .line 105
    iput-object v2, p0, Lcom/acmeaom/android/a/a/c/d;->j:Landroid/graphics/Canvas;

    .line 106
    iput-object v2, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->m:I

    .line 45
    invoke-static {}, Lcom/acmeaom/android/a/i/d;->c()Lcom/acmeaom/android/a/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->n:I

    .line 47
    sget-object v0, Lcom/acmeaom/android/a/a/c/f;->a:Lcom/acmeaom/android/a/a/c/f;

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->p:Lcom/acmeaom/android/a/a/c/f;

    .line 56
    iput-object p1, p0, Lcom/acmeaom/android/a/a/c/d;->c:Ljava/lang/Object;

    .line 57
    iput p2, p0, Lcom/acmeaom/android/a/a/c/d;->d:I

    .line 58
    iput p3, p0, Lcom/acmeaom/android/a/a/c/d;->e:I

    .line 59
    iput p4, p0, Lcom/acmeaom/android/a/a/c/d;->f:I

    .line 60
    iput p5, p0, Lcom/acmeaom/android/a/a/c/d;->g:I

    .line 61
    iput-object p6, p0, Lcom/acmeaom/android/a/a/c/d;->h:Lcom/acmeaom/android/a/a/c/c;

    .line 62
    iput p7, p0, Lcom/acmeaom/android/a/a/c/d;->i:I

    .line 63
    sget-object v0, Lcom/acmeaom/android/a/a/c/h;->b:Lcom/acmeaom/android/a/a/c/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/c/h;->ordinal()I

    move-result v0

    and-int/2addr v0, p7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/acmeaom/android/a/a/c/d;->o:Z

    .line 66
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    .line 67
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->j:Landroid/graphics/Canvas;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    const/16 v1, 0x181

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 71
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)Lcom/acmeaom/android/a/a/c/d;
    .locals 8

    .prologue
    .line 117
    new-instance v0, Lcom/acmeaom/android/a/a/c/d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/acmeaom/android/a/a/c/d;-><init>(Ljava/lang/Object;IIIILcom/acmeaom/android/a/a/c/c;I)V

    return-object v0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/d;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/acmeaom/android/a/a/c/d;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    goto :goto_0
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/d;F)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/d;FF)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 123
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p1, Lcom/acmeaom/android/a/a/c/b;->a:Lcom/acmeaom/android/a/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->m:I

    .line 135
    return-void
.end method

.method public static a(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/i;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/c/i;->a()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/c/i;->a()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0
.end method

.method public static b(Lcom/acmeaom/android/a/a/c/d;)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/acmeaom/android/a/a/c/d;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->j:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/d;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->l:Landroid/graphics/Path;

    goto :goto_0
.end method

.method public static b(Lcom/acmeaom/android/a/a/c/d;Lcom/acmeaom/android/a/a/c/b;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p1, Lcom/acmeaom/android/a/a/c/b;->a:Lcom/acmeaom/android/a/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    iput v0, p0, Lcom/acmeaom/android/a/a/c/d;->n:I

    .line 150
    return-void
.end method

.method public static c(Lcom/acmeaom/android/a/a/c/d;)I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public static d(Lcom/acmeaom/android/a/a/c/d;)I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public static e(Lcom/acmeaom/android/a/a/c/d;)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 210
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 213
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 214
    return-object v1
.end method

.method public static f(Lcom/acmeaom/android/a/a/c/d;)I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/acmeaom/android/a/a/c/d;->d:I

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/e/b;)V
    .locals 6

    .prologue
    .line 176
    sget-boolean v0, Lcom/acmeaom/android/a/a/c/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/acmeaom/android/a/a/e/b;->b:Lcom/acmeaom/android/a/a/b/c;

    iget v0, v0, Lcom/acmeaom/android/a/a/b/c;->b:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    sget-boolean v0, Lcom/acmeaom/android/a/a/c/d;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/acmeaom/android/a/a/e/b;->b:Lcom/acmeaom/android/a/a/b/c;

    iget v0, v0, Lcom/acmeaom/android/a/a/b/c;->a:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_1
    sget-boolean v0, Lcom/acmeaom/android/a/a/c/d;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/acmeaom/android/a/a/e/b;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_2
    iget-object v0, p1, Lcom/acmeaom/android/a/a/e/b;->a:Lcom/acmeaom/android/a/a/e/c;

    iget-object v0, v0, Lcom/acmeaom/android/a/a/e/c;->a:Lcom/acmeaom/android/a/a/b/a;

    iget-object v2, v0, Lcom/acmeaom/android/a/a/b/a;->b:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/acmeaom/android/a/a/e/b;->a:Lcom/acmeaom/android/a/a/e/c;

    iget-object v0, v0, Lcom/acmeaom/android/a/a/e/c;->a:Lcom/acmeaom/android/a/a/b/a;

    iget-object v0, v0, Lcom/acmeaom/android/a/a/b/a;->c:Ljava/util/HashMap;

    const-string v1, "kCTFontAttributeName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/e/a;

    .line 183
    iget-object v1, p1, Lcom/acmeaom/android/a/a/e/b;->a:Lcom/acmeaom/android/a/a/e/c;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/e/c;->a:Lcom/acmeaom/android/a/a/b/a;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/b/a;->c:Ljava/util/HashMap;

    const-string v3, "kCTForegroundColorAttributeName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acmeaom/android/a/a/c/b;

    .line 185
    sget-boolean v3, Lcom/acmeaom/android/a/a/c/d;->b:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_3
    sget-boolean v3, Lcom/acmeaom/android/a/a/c/d;->b:Z

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_4
    iget v3, v0, Lcom/acmeaom/android/a/a/e/a;->b:F

    .line 189
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 190
    const/16 v5, 0x181

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 192
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/e/a;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 195
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 196
    iget-object v0, v1, Lcom/acmeaom/android/a/a/c/b;->a:Lcom/acmeaom/android/a/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/d;->d()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->j:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/acmeaom/android/a/a/e/b;->c:Lcom/acmeaom/android/a/a/c/i;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v1, v1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v1, v1, Lcom/acmeaom/android/a/a/c/l;->a:F

    iget-object v3, p1, Lcom/acmeaom/android/a/a/e/b;->c:Lcom/acmeaom/android/a/a/c/i;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v3, v3, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget v3, v3, Lcom/acmeaom/android/a/a/c/l;->b:F

    iget-object v5, p1, Lcom/acmeaom/android/a/a/e/b;->c:Lcom/acmeaom/android/a/a/c/i;

    iget-object v5, v5, Lcom/acmeaom/android/a/a/c/i;->a:Lcom/acmeaom/android/a/a/c/m;

    iget-object v5, v5, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v5, v5, Lcom/acmeaom/android/a/a/c/n;->b:F

    add-float/2addr v3, v5

    const/high16 v5, 0x40400000

    sub-float/2addr v3, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 234
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 230
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/acmeaom/android/a/a/c/d;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 232
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
