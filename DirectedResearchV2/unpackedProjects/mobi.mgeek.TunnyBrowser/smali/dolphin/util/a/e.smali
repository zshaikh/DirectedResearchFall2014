.class public abstract Ldolphin/util/a/e;
.super Ldolphin/util/a/d;
.source "PartBase.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ldolphin/util/a/d;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Ldolphin/util/a/e;->i:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Ldolphin/util/a/e;->j:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Ldolphin/util/a/e;->k:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Ldolphin/util/a/e;->l:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ldolphin/util/a/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldolphin/util/a/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ldolphin/util/a/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ldolphin/util/a/e;->l:Ljava/lang/String;

    return-object v0
.end method
