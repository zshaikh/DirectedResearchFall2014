.class public Ldolphin/webkit/a/a/b/a;
.super Ldolphin/webkit/a/a/c;
.source "AlgorithmIdentifier.java"


# instance fields
.field private a:Ldolphin/webkit/a/a/bc;

.field private b:Ldolphin/webkit/a/a/ap;

.field private c:Z


# direct methods
.method public constructor <init>(Ldolphin/webkit/a/a/bc;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ldolphin/webkit/a/a/c;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/a/a/b/a;->c:Z

    .line 57
    iput-object p1, p0, Ldolphin/webkit/a/a/b/a;->a:Ldolphin/webkit/a/a/bc;

    .line 58
    return-void
.end method


# virtual methods
.method public d()Ldolphin/webkit/a/a/bb;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ldolphin/webkit/a/a/d;

    invoke-direct {v0}, Ldolphin/webkit/a/a/d;-><init>()V

    .line 128
    iget-object v1, p0, Ldolphin/webkit/a/a/b/a;->a:Ldolphin/webkit/a/a/bc;

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 130
    iget-boolean v1, p0, Ldolphin/webkit/a/a/b/a;->c:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Ldolphin/webkit/a/a/b/a;->b:Ldolphin/webkit/a/a/ap;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Ldolphin/webkit/a/a/b/a;->b:Ldolphin/webkit/a/a/ap;

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    .line 142
    :cond_0
    :goto_0
    new-instance v1, Ldolphin/webkit/a/a/bh;

    invoke-direct {v1, v0}, Ldolphin/webkit/a/a/bh;-><init>(Ldolphin/webkit/a/a/d;)V

    return-object v1

    .line 138
    :cond_1
    sget-object v1, Ldolphin/webkit/a/a/az;->a:Ldolphin/webkit/a/a/az;

    invoke-virtual {v0, v1}, Ldolphin/webkit/a/a/d;->a(Ldolphin/webkit/a/a/ap;)V

    goto :goto_0
.end method

.method public e()Ldolphin/webkit/a/a/bc;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ldolphin/webkit/a/a/b/a;->a:Ldolphin/webkit/a/a/bc;

    return-object v0
.end method
