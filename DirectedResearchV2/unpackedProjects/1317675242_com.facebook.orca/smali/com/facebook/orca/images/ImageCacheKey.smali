.class public Lcom/facebook/orca/images/ImageCacheKey;
.super Ljava/lang/Object;
.source "ImageCacheKey.java"


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Landroid/net/Uri;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Landroid/net/Uri;

    .line 19
    iput-object p2, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 37
    :goto_0
    return v0

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 32
    :cond_2
    check-cast p1, Lcom/facebook/orca/images/ImageCacheKey;

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/facebook/orca/images/ImageCacheKey;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    .line 37
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/images/ImageCacheKey;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/images/ImageCacheKey;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 44
    return v0

    .line 43
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
