.class public final Lcom/b/a/ap;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/ba;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:Z

.field public final l:Landroid/graphics/Bitmap$Config;


# direct methods
.method private constructor <init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/ba;",
            ">;IIZZFFFZ",
            "Landroid/graphics/Bitmap$Config;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/b/a/ap;->a:Landroid/net/Uri;

    .line 72
    iput p2, p0, Lcom/b/a/ap;->b:I

    .line 73
    if-nez p3, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/ap;->c:Ljava/util/List;

    .line 78
    :goto_0
    iput p4, p0, Lcom/b/a/ap;->d:I

    .line 79
    iput p5, p0, Lcom/b/a/ap;->e:I

    .line 80
    iput-boolean p6, p0, Lcom/b/a/ap;->f:Z

    .line 81
    iput-boolean p7, p0, Lcom/b/a/ap;->g:Z

    .line 82
    iput p8, p0, Lcom/b/a/ap;->h:F

    .line 83
    iput p9, p0, Lcom/b/a/ap;->i:F

    .line 84
    iput p10, p0, Lcom/b/a/ap;->j:F

    .line 85
    iput-boolean p11, p0, Lcom/b/a/ap;->k:Z

    .line 86
    iput-object p12, p0, Lcom/b/a/ap;->l:Landroid/graphics/Bitmap$Config;

    .line 87
    return-void

    .line 76
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ap;->c:Ljava/util/List;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;Lcom/b/a/aq;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p12}, Lcom/b/a/ap;-><init>(Landroid/net/Uri;ILjava/util/List;IIZZFFFZLandroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/b/a/ap;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/b/a/ap;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/b/a/ap;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/b/a/ap;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/b/a/ap;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/ap;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/b/a/ap;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/b/a/ap;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/b/a/ap;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
