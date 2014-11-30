.class public Lorg/c/a/a/a/b;
.super Ljava/lang/Object;
.source "BasicAuthentication.java"

# interfaces
.implements Lorg/c/a/a/a/a;


# instance fields
.field private a:Lorg/c/a/c/f;


# direct methods
.method public constructor <init>(Lorg/c/a/a/a/d;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/c/a/a/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/c/a/a/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-static {v1, v2}, Lorg/c/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/c/a/c/o;

    invoke-direct {v1, v0}, Lorg/c/a/c/o;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/c/a/a/a/b;->a:Lorg/c/a/c/f;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/t;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lorg/c/a/b/o;->z:Lorg/c/a/c/f;

    iget-object v1, p0, Lorg/c/a/a/a/b;->a:Lorg/c/a/c/f;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/t;->b(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 56
    return-void
.end method
