.class public Ldolphin/webkit/a/a/bk;
.super Ljava/lang/Object;
.source "DERSetParser.java"

# interfaces
.implements Ldolphin/webkit/a/a/t;


# instance fields
.field private a:Ldolphin/webkit/a/a/u;


# direct methods
.method constructor <init>(Ldolphin/webkit/a/a/u;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ldolphin/webkit/a/a/bk;->a:Ldolphin/webkit/a/a/u;

    .line 13
    return-void
.end method


# virtual methods
.method public c()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bk;->g()Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ldolphin/webkit/a/a/p;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ldolphin/webkit/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ldolphin/webkit/a/a/bj;

    iget-object v1, p0, Ldolphin/webkit/a/a/bk;->a:Ldolphin/webkit/a/a/u;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/u;->b()Ldolphin/webkit/a/a/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/a/a/bj;-><init>(Ldolphin/webkit/a/a/d;Z)V

    return-object v0
.end method
