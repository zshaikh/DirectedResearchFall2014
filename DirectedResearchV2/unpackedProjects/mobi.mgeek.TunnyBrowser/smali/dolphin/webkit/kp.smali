.class final Ldolphin/webkit/kp;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# instance fields
.field private a:Landroid/support/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/km;)V
    .locals 0

    .prologue
    .line 1530
    invoke-direct {p0}, Ldolphin/webkit/kp;-><init>()V

    return-void
.end method

.method private b(Landroid/support/h;)V
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    if-eqz v0, :cond_0

    .line 1598
    iget-object v0, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    invoke-virtual {v0}, Landroid/support/h;->c()V

    .line 1600
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/support/h;->b(Landroid/support/h;)Landroid/support/h;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    .line 1601
    return-void

    .line 1600
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/support/h;
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    return-object v0
.end method

.method public a(Landroid/support/h;)Landroid/support/h;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1549
    if-nez p1, :cond_1

    .line 1550
    invoke-virtual {p0}, Ldolphin/webkit/kp;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    iget-object p1, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    .line 1552
    if-eqz p1, :cond_0

    .line 1553
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/support/h;->a(I)V

    .line 1554
    iput-object v0, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    .line 1584
    :cond_0
    :goto_0
    return-object p1

    .line 1560
    :cond_1
    invoke-virtual {p1}, Landroid/support/h;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object p1, v0

    .line 1584
    goto :goto_0

    .line 1565
    :pswitch_1
    iget-object v1, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    invoke-virtual {v1}, Landroid/support/h;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :cond_2
    move-object p1, v0

    .line 1567
    goto :goto_0

    .line 1569
    :cond_3
    invoke-direct {p0, p1}, Ldolphin/webkit/kp;->b(Landroid/support/h;)V

    goto :goto_0

    .line 1573
    :pswitch_2
    invoke-direct {p0, p1}, Ldolphin/webkit/kp;->b(Landroid/support/h;)V

    goto :goto_0

    .line 1577
    :pswitch_3
    iget-object v1, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    if-nez v1, :cond_4

    move-object p1, v0

    .line 1578
    goto :goto_0

    .line 1580
    :cond_4
    invoke-direct {p0, v0}, Ldolphin/webkit/kp;->b(Landroid/support/h;)V

    goto :goto_0

    .line 1560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1593
    iget-object v1, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/kp;->a:Landroid/support/h;

    invoke-virtual {v1}, Landroid/support/h;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
