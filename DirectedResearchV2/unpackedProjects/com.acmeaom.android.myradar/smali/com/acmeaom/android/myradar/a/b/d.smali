.class Lcom/acmeaom/android/myradar/a/b/d;
.super Lcom/android/vending/billing/m;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/a/b/a;


# direct methods
.method public constructor <init>(Lcom/acmeaom/android/myradar/a/b/a;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    .line 40
    invoke-static {p1}, Lcom/acmeaom/android/myradar/a/b/a;->a(Lcom/acmeaom/android/myradar/a/b/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/vending/billing/m;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/android/vending/billing/e;Lcom/android/vending/billing/i;)V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/acmeaom/android/myradar/a/b/c;->a:[I

    invoke-virtual {p2}, Lcom/android/vending/billing/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    iget-object v1, p1, Lcom/android/vending/billing/e;->c:Ljava/lang/String;

    sget-object v2, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    invoke-interface {v0, p2, v1, v2}, Lcom/acmeaom/android/myradar/a/j;->a(Lcom/android/vending/billing/i;Ljava/lang/String;Lcom/android/vending/billing/h;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    iget-object v1, p1, Lcom/android/vending/billing/e;->c:Ljava/lang/String;

    sget-object v2, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    invoke-interface {v0, p2, v1, v2}, Lcom/acmeaom/android/myradar/a/j;->a(Lcom/android/vending/billing/i;Ljava/lang/String;Lcom/android/vending/billing/h;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/android/vending/billing/f;Lcom/android/vending/billing/i;)V
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/android/vending/billing/i;->a:Lcom/android/vending/billing/i;

    if-ne p2, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->e(Lcom/acmeaom/android/myradar/a/b/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "db_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/acmeaom/android/myradar/a/j;->b(Lcom/android/vending/billing/i;)V

    .line 135
    sget-object v0, Lcom/android/vending/billing/i;->a:Lcom/android/vending/billing/i;

    if-ne p2, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->f(Lcom/acmeaom/android/myradar/a/b/a;)V

    .line 139
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 64
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->d(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/a/b/a;->a(Lcom/acmeaom/android/myradar/a/b/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->d(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/a/b/a;->a(Lcom/acmeaom/android/myradar/a/b/a;)Landroid/app/Activity;

    move-result-object v1

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/acmeaom/android/myradar/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/billing/h;JLjava/lang/String;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    if-ge v8, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p5

    move-object/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/acmeaom/android/myradar/a/j;->a(Ljava/lang/String;Lcom/android/vending/billing/h;Ljava/lang/String;JLjava/lang/String;)V

    .line 75
    :cond_0
    sget-object v0, Lcom/android/vending/billing/h;->b:Lcom/android/vending/billing/h;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/vending/billing/h;->c:Lcom/android/vending/billing/h;

    if-ne p2, v0, :cond_2

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/acmeaom/android/myradar/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0, p1}, Lcom/acmeaom/android/myradar/a/b/a;->a(Lcom/acmeaom/android/myradar/a/b/a;Z)Z

    .line 48
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->b(Lcom/acmeaom/android/myradar/a/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/acmeaom/android/myradar/a/b/d;->a:Lcom/acmeaom/android/myradar/a/b/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/a/b/a;->c(Lcom/acmeaom/android/myradar/a/b/a;)Lcom/acmeaom/android/myradar/a/j;

    move-result-object v0

    sget-object v1, Lcom/android/vending/billing/i;->d:Lcom/android/vending/billing/i;

    invoke-interface {v0, v1}, Lcom/acmeaom/android/myradar/a/j;->a(Lcom/android/vending/billing/i;)V

    .line 54
    :cond_0
    return-void
.end method
