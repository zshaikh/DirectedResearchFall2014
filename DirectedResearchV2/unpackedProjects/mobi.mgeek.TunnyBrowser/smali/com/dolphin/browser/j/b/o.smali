.class final Lcom/dolphin/browser/j/b/o;
.super Ljava/lang/Object;
.source "SiteCertRevocationValidator.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/j/b/o;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v0, 0x1bb

    :goto_0
    iput v0, p0, Lcom/dolphin/browser/j/b/o;->b:I

    .line 99
    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    instance-of v1, p1, Lcom/dolphin/browser/j/b/o;

    if-eqz v1, :cond_0

    .line 109
    check-cast p1, Lcom/dolphin/browser/j/b/o;

    .line 110
    iget-object v1, p0, Lcom/dolphin/browser/j/b/o;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/dolphin/browser/j/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/dolphin/browser/j/b/o;->b:I

    iget v2, p1, Lcom/dolphin/browser/j/b/o;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/j/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/j/b/o;->b:I

    mul-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    return v0
.end method
