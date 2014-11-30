.class public Lcom/b/a/u;
.super Ljava/lang/Object;
.source "Downloader.java"


# instance fields
.field final a:Ljava/io/InputStream;

.field final b:Landroid/graphics/Bitmap;

.field final c:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/b/a/u;->a:Ljava/io/InputStream;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/u;->b:Landroid/graphics/Bitmap;

    .line 78
    iput-boolean p2, p0, Lcom/b/a/u;->c:Z

    .line 79
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/b/a/u;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/b/a/u;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
