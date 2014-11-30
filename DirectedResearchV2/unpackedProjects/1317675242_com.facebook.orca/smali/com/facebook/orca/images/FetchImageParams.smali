.class public Lcom/facebook/orca/images/FetchImageParams;
.super Ljava/lang/Object;
.source "FetchImageParams.java"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/facebook/orca/images/UrlImageProcessor;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V
    .locals 1
    .param p2    # Lcom/facebook/orca/images/UrlImageProcessor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageParams;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    .line 39
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/images/UrlImageProcessor;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z
    .locals 1

    .prologue
    .line 92
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/images/FetchImageParams;)Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/facebook/orca/images/UrlImageProcessor;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    return-object v0
.end method

.method public c()Lcom/facebook/orca/images/ImageCacheKey;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    sget-object v1, Lcom/facebook/orca/images/UrlImageProcessor;->a:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lcom/facebook/orca/images/ImageCacheKey;

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageParams;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcom/facebook/orca/images/ImageCacheKey;

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageParams;->a:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;)V

    goto :goto_0
.end method
