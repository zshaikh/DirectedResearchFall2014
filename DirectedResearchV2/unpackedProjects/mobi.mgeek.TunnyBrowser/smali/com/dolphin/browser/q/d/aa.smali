.class public Lcom/dolphin/browser/q/d/aa;
.super Ljava/lang/Object;
.source "TwitterManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/q/d/aa;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/dolphin/browser/q/d/k;

.field private d:Lcom/dolphin/browser/q/d/j;

.field private e:Lcom/dolphin/browser/q/d/ao;

.field private f:Lcom/dolphin/browser/q/d/a;

.field private g:Z

.field private h:Lcom/dolphin/browser/q/d/ap;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/q/d/aa;->b:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/dolphin/browser/q/d/j;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/aa;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/d/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/aa;->d:Lcom/dolphin/browser/q/d/j;

    .line 51
    new-instance v0, Lcom/dolphin/browser/q/d/ao;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/aa;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/d/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/aa;->e:Lcom/dolphin/browser/q/d/ao;

    .line 52
    new-instance v0, Lcom/dolphin/browser/q/d/k;

    const-string v1, "Uico61Jb1TRGOCZcoQC87Q"

    const-string v2, "eXEq7L34BgNKAK8QRH5KypcbqstX8AS7BFgD8Q3RJv0"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/q/d/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    .line 53
    new-instance v0, Lcom/dolphin/browser/q/d/a;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/q/d/a;-><init>(Lcom/dolphin/browser/q/d/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/aa;->f:Lcom/dolphin/browser/q/d/a;

    .line 54
    new-instance v0, Lcom/dolphin/browser/q/d/aj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/q/d/aj;-><init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/ab;)V

    .line 55
    invoke-static {v0}, Lcom/dolphin/browser/q/d/g;->a(Lcom/dolphin/browser/q/d/h;)V

    .line 56
    invoke-static {v0}, Lcom/dolphin/browser/q/d/g;->a(Lcom/dolphin/browser/q/d/i;)V

    .line 57
    invoke-virtual {p0}, Lcom/dolphin/browser/q/d/aa;->b()V

    .line 58
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/q/d/aa;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/dolphin/browser/q/d/aa;->a:Lcom/dolphin/browser/q/d/aa;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dolphin/browser/q/d/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/q/d/aa;-><init>()V

    sput-object v0, Lcom/dolphin/browser/q/d/aa;->a:Lcom/dolphin/browser/q/d/aa;

    .line 45
    :cond_0
    sget-object v0, Lcom/dolphin/browser/q/d/aa;->a:Lcom/dolphin/browser/q/d/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/k;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/aa;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/dolphin/browser/q/d/aa;->g:Z

    return p1
.end method

.method private a(Lcom/dolphin/browser/q/d/r;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    iget-object v1, p1, Lcom/dolphin/browser/q/d/r;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/dolphin/browser/q/d/r;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/dolphin/browser/q/d/r;->c:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/dolphin/browser/q/d/r;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/dolphin/browser/q/d/r;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/j;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->d:Lcom/dolphin/browser/q/d/j;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ao;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->e:Lcom/dolphin/browser/q/d/ao;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->h:Lcom/dolphin/browser/q/d/ap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;Landroid/graphics/Bitmap;Ljava/lang/String;)Lcom/dolphin/browser/q/d/r;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Lcom/dolphin/browser/q/d/r;

    invoke-direct {v0}, Lcom/dolphin/browser/q/d/r;-><init>()V

    .line 276
    iput-object p1, v0, Lcom/dolphin/browser/q/d/r;->b:Ljava/io/File;

    .line 277
    iput-object p2, v0, Lcom/dolphin/browser/q/d/r;->c:Landroid/graphics/Bitmap;

    .line 278
    iput-object p3, v0, Lcom/dolphin/browser/q/d/r;->a:Ljava/lang/String;

    .line 281
    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/d/aa;->a(Lcom/dolphin/browser/q/d/r;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/dolphin/browser/q/d/e;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    new-instance v1, Lcom/dolphin/browser/q/d/ac;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/q/d/ac;-><init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/e;)V

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/q/d/k;->a(Landroid/content/Context;Lcom/dolphin/browser/share/g;)V

    .line 180
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/dolphin/browser/q/d/f;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/z;->c()V

    .line 191
    invoke-static {}, Lcom/dolphin/browser/q/d/g;->b()V

    .line 192
    if-eqz p2, :cond_0

    .line 193
    invoke-interface {p2}, Lcom/dolphin/browser/q/d/f;->b()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->d:Lcom/dolphin/browser/q/d/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/j;->a()V

    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->f:Lcom/dolphin/browser/q/d/a;

    new-instance v1, Lcom/dolphin/browser/q/d/ad;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/q/d/ad;-><init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/f;)V

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/q/d/a;->a(Landroid/content/Context;Lcom/dolphin/browser/q/d/c;)V

    .line 248
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/d/ap;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/q/d/aa;->h:Lcom/dolphin/browser/q/d/ap;

    .line 106
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/d/r;Lcom/dolphin/browser/share/a;)V
    .locals 2

    .prologue
    .line 305
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/q/d/k;->a(Lcom/dolphin/browser/q/d/r;Lcom/dolphin/browser/share/g;)V

    .line 325
    return-void

    .line 305
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/d/ah;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/q/d/ah;-><init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/share/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/share/a;)V
    .locals 2

    .prologue
    .line 251
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/q/d/k;->a(Ljava/lang/String;Lcom/dolphin/browser/share/g;)V

    .line 271
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/dolphin/browser/q/d/ag;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/q/d/ag;-><init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/share/a;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->d:Lcom/dolphin/browser/q/d/j;

    iget-object v1, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/d/j;->a(Lcom/dolphin/browser/q/d/k;)Z

    .line 62
    return-void
.end method

.method public b(Lcom/dolphin/browser/q/d/ap;)V
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/dolphin/browser/q/d/aa;->g:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/q/d/aa;->g:Z

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    new-instance v1, Lcom/dolphin/browser/q/d/ab;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/q/d/ab;-><init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/ap;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/d/k;->b(Lcom/dolphin/browser/share/g;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->e:Lcom/dolphin/browser/q/d/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/ao;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->e:Lcom/dolphin/browser/q/d/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/ao;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->e:Lcom/dolphin/browser/q/d/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/ao;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/d/aa;->b(Lcom/dolphin/browser/q/d/ap;)V

    .line 154
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 328
    invoke-static {}, Lcom/dolphin/browser/q/d/z;->b()Lcom/dolphin/browser/q/d/z;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/z;->d()Lorg/json/JSONArray;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/q/d/aa;->c:Lcom/dolphin/browser/q/d/k;

    new-instance v2, Lcom/dolphin/browser/q/d/ai;

    invoke-direct {v2, p0, v0}, Lcom/dolphin/browser/q/d/ai;-><init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/z;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/q/d/k;->a(Lcom/dolphin/browser/share/g;)V

    goto :goto_0
.end method
