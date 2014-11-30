.class Lorg/b/b/v;
.super Lorg/b/b/n;
.source "BayeuxClient.java"


# instance fields
.field final synthetic i:Lorg/b/b/a;


# direct methods
.method private constructor <init>(Lorg/b/b/a;Lorg/b/b/a/a;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1425
    iput-object p1, p0, Lorg/b/b/v;->i:Lorg/b/b/a;

    .line 1426
    sget-object v2, Lorg/b/b/ac;->g:Lorg/b/b/ac;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v9}, Lorg/b/b/n;-><init>(Lorg/b/b/a;Lorg/b/b/ac;Ljava/util/Map;Ljava/util/Map;Lorg/b/b/a/a;Ljava/lang/String;JLorg/b/b/b;)V

    .line 1427
    return-void
.end method

.method synthetic constructor <init>(Lorg/b/b/a;Lorg/b/b/a/a;Lorg/b/b/b;)V
    .locals 0

    .prologue
    .line 1422
    invoke-direct {p0, p1, p2}, Lorg/b/b/v;-><init>(Lorg/b/b/a;Lorg/b/b/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lorg/b/b/v;->e:Lorg/b/b/a/a;

    invoke-virtual {v0}, Lorg/b/b/a/a;->d()V

    .line 1439
    iget-object v0, p0, Lorg/b/b/v;->i:Lorg/b/b/a;

    invoke-virtual {v0}, Lorg/b/b/a;->o()V

    .line 1440
    return-void
.end method

.method protected a(Lorg/b/b/n;)Z
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p1, Lorg/b/b/n;->b:Lorg/b/b/ac;

    sget-object v1, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
