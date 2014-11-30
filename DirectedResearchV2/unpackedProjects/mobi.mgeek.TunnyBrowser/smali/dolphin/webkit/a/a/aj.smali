.class public Ldolphin/webkit/a/a/aj;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Ldolphin/webkit/a/a/w;


# instance fields
.field private a:Z

.field private b:I

.field private c:Ldolphin/webkit/a/a/u;


# direct methods
.method constructor <init>(ZILdolphin/webkit/a/a/u;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Ldolphin/webkit/a/a/aj;->a:Z

    .line 30
    iput p2, p0, Ldolphin/webkit/a/a/aj;->b:I

    .line 31
    iput-object p3, p0, Ldolphin/webkit/a/a/aj;->c:Ldolphin/webkit/a/a/u;

    .line 32
    return-void
.end method


# virtual methods
.method public c()Ldolphin/webkit/a/a/bb;
    .locals 2

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/aj;->g()Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ldolphin/webkit/a/a/p;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ldolphin/webkit/a/a/p;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Ldolphin/webkit/a/a/aj;->c:Ldolphin/webkit/a/a/u;

    iget-boolean v1, p0, Ldolphin/webkit/a/a/aj;->a:Z

    iget v2, p0, Ldolphin/webkit/a/a/aj;->b:I

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/a/a/u;->a(ZI)Ldolphin/webkit/a/a/bb;

    move-result-object v0

    return-object v0
.end method
