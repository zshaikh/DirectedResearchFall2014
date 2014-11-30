.class Lorg/b/b/l;
.super Lorg/b/b/v;
.source "BayeuxClient.java"


# instance fields
.field final synthetic a:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;Lorg/b/b/a/a;)V
    .locals 1

    .prologue
    .line 1446
    iput-object p1, p0, Lorg/b/b/l;->a:Lorg/b/b/a;

    .line 1447
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V

    .line 1448
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1443
    invoke-direct {p0, p1, p2}, Lorg/b/b/l;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lorg/b/b/l;->e:Lorg/b/b/a/a;

    invoke-virtual {v0}, Lorg/b/b/a/a;->c()V

    .line 1454
    invoke-super {p0}, Lorg/b/b/v;->a()V

    .line 1455
    return-void
.end method
