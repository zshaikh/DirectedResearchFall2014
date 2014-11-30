.class public Ldolphin/webkit/a/a/at;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Ldolphin/webkit/a/a/ap;
.implements Ldolphin/webkit/a/a/bt;


# instance fields
.field private a:Ldolphin/webkit/a/a/u;


# direct methods
.method public constructor <init>(Ldolphin/webkit/a/a/u;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ldolphin/webkit/a/a/at;->a:Ldolphin/webkit/a/a/u;

    .line 16
    return-void
.end method


# virtual methods
.method public c()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/at;->g()Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Ldolphin/webkit/a/a/p;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Ldolphin/webkit/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :catch_1
    move-exception v0

    .line 49
    new-instance v1, Ldolphin/webkit/a/a/p;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Ldolphin/webkit/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 3

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Ldolphin/webkit/a/a/as;

    iget-object v1, p0, Ldolphin/webkit/a/a/at;->a:Ldolphin/webkit/a/a/u;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/u;->b()Ldolphin/webkit/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/as;-><init>(Ldolphin/webkit/a/a/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ldolphin/webkit/a/a/f;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ldolphin/webkit/a/a/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
