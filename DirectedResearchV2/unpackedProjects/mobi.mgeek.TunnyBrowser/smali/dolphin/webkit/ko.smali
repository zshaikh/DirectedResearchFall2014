.class final Ldolphin/webkit/ko;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# instance fields
.field public a:Ldolphin/webkit/kn;

.field public b:Ldolphin/webkit/kn;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/km;)V
    .locals 0

    .prologue
    .line 1483
    invoke-direct {p0}, Ldolphin/webkit/ko;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldolphin/webkit/kn;)V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    if-nez v0, :cond_0

    .line 1493
    iput-object p1, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 1494
    iput-object p1, p0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    .line 1499
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    iput-object p1, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 1497
    iput-object p1, p0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ldolphin/webkit/kn;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1502
    iget-object v0, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 1503
    if-eqz v0, :cond_0

    .line 1504
    iget-object v1, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    .line 1505
    if-nez v1, :cond_1

    .line 1506
    iput-object v2, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 1507
    iput-object v2, p0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    .line 1513
    :cond_0
    :goto_0
    return-object v0

    .line 1509
    :cond_1
    iput-object v1, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 1510
    iput-object v2, v0, Ldolphin/webkit/kn;->a:Ldolphin/webkit/kn;

    goto :goto_0
.end method

.method public c()Ldolphin/webkit/kn;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1517
    iget-object v0, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 1518
    if-eqz v0, :cond_0

    .line 1519
    iput-object v1, p0, Ldolphin/webkit/ko;->a:Ldolphin/webkit/kn;

    .line 1520
    iput-object v1, p0, Ldolphin/webkit/ko;->b:Ldolphin/webkit/kn;

    .line 1522
    :cond_0
    return-object v0
.end method
