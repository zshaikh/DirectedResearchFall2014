.class public Ldolphin/webkit/a/a/bi;
.super Ljava/lang/Object;
.source "DERSequenceParser.java"

# interfaces
.implements Ldolphin/webkit/a/a/r;


# instance fields
.field private a:Ldolphin/webkit/a/a/u;


# direct methods
.method constructor <init>(Ldolphin/webkit/a/a/u;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ldolphin/webkit/a/a/bi;->a:Ldolphin/webkit/a/a/u;

    .line 13
    return-void
.end method


# virtual methods
.method public c()Ldolphin/webkit/a/a/bb;
    .locals 2

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bi;->g()Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ldolphin/webkit/a/a/bh;

    iget-object v1, p0, Ldolphin/webkit/a/a/bi;->a:Ldolphin/webkit/a/a/u;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/u;->b()Ldolphin/webkit/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    return-object v0
.end method
