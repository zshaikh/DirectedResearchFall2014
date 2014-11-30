.class public Ldolphin/webkit/a/a/z;
.super Ljava/lang/Object;
.source "BERApplicationSpecificParser.java"

# interfaces
.implements Ldolphin/webkit/a/a/a;


# instance fields
.field private final a:I

.field private final b:Ldolphin/webkit/a/a/u;


# direct methods
.method constructor <init>(ILdolphin/webkit/a/a/u;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Ldolphin/webkit/a/a/z;->a:I

    .line 14
    iput-object p2, p0, Ldolphin/webkit/a/a/z;->b:Ldolphin/webkit/a/a/u;

    .line 15
    return-void
.end method


# virtual methods
.method public c()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/z;->g()Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ldolphin/webkit/a/a/p;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ldolphin/webkit/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ldolphin/webkit/a/a/y;

    iget v1, p0, Ldolphin/webkit/a/a/z;->a:I

    iget-object v2, p0, Ldolphin/webkit/a/a/z;->b:Ldolphin/webkit/a/a/u;

    invoke-virtual {v2}, Ldolphin/webkit/a/a/u;->b()Ldolphin/webkit/a/a/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldolphin/webkit/a/a/y;-><init>(ILdolphin/webkit/a/a/d;)V

    return-object v0
.end method
