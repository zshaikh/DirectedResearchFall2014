.class Lorg/c/a/d/d/e;
.super Ljava/io/FilterInputStream;
.source "JarResource.java"


# instance fields
.field final synthetic a:Lorg/c/a/d/d/d;


# direct methods
.method constructor <init>(Lorg/c/a/d/d/d;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/c/a/d/d/e;->a:Lorg/c/a/d/d/d;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lorg/c/a/d/e;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/d/d/e;->in:Ljava/io/InputStream;

    return-void
.end method
