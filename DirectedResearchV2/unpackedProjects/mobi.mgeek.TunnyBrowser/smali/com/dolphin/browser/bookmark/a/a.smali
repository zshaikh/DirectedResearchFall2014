.class public Lcom/dolphin/browser/bookmark/a/a;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:J

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Z

.field private j:[B


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 31
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-wide v6, p3

    invoke-direct/range {v0 .. v11}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;[BJZZJ)V

    .line 32
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 23
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, v4

    move v9, v8

    move-wide v10, v6

    invoke-direct/range {v0 .. v11}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;[BJZZJ)V

    .line 24
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .prologue
    .line 27
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v11}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;[BJZZJ)V

    .line 28
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;[BJZZJ)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/a/a;->a:J

    .line 45
    iput-object p3, p0, Lcom/dolphin/browser/bookmark/a/a;->b:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/dolphin/browser/bookmark/a/a;->c:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/dolphin/browser/bookmark/a/a;->d:[B

    .line 48
    iput-wide p6, p0, Lcom/dolphin/browser/bookmark/a/a;->e:J

    .line 49
    iput-boolean p8, p0, Lcom/dolphin/browser/bookmark/a/a;->f:Z

    .line 50
    iput-boolean p9, p0, Lcom/dolphin/browser/bookmark/a/a;->g:Z

    .line 51
    iput-wide p10, p0, Lcom/dolphin/browser/bookmark/a/a;->h:J

    .line 52
    return-void
.end method

.method private c([B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/a/a;->a:J

    return-wide v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/a/a;->i:Z

    .line 112
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/a/a;->d:[B

    .line 80
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b([B)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/a/a;->j:[B

    .line 120
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/a/a;->f:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/a/a;->d:[B

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/a/a;->c([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/a/a;->e:J

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/a/a;->g:Z

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/a/a;->h:J

    return-wide v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/a/a;->i:Z

    return v0
.end method

.method public j()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/a/a;->j:[B

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/a/a;->c([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
