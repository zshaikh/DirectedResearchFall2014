.class public Lcom/dolphin/browser/DolphinService/k;
.super Lcom/dolphin/browser/promoted/a;
.source "UpdateNotifyPromotion.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/dolphin/browser/update/model/b;

.field private d:Lcom/dolphin/browser/DolphinService/m;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/dolphin/browser/update/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/DolphinService/m;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/dolphin/browser/promoted/a;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->b:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->d:Lcom/dolphin/browser/DolphinService/m;

    .line 117
    new-instance v0, Lcom/dolphin/browser/DolphinService/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/l;-><init>(Lcom/dolphin/browser/DolphinService/k;)V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->f:Lcom/dolphin/browser/update/d;

    .line 33
    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/k;->d:Lcom/dolphin/browser/DolphinService/m;

    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/k;->g()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/k;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/k;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/dolphin/browser/update/i;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/update/i;-><init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/update/i;->a()V

    .line 115
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->e:Landroid/app/Dialog;

    .line 139
    :cond_0
    new-instance v0, Lcom/dolphin/browser/update/a;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/update/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;)V

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/k;->f:Lcom/dolphin/browser/update/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/a;->a(Lcom/dolphin/browser/update/d;)Lcom/dolphin/browser/update/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/update/a;->a()Landroid/app/Dialog;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 145
    :cond_1
    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->e:Landroid/app/Dialog;

    .line 146
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->d:Lcom/dolphin/browser/DolphinService/m;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->d:Lcom/dolphin/browser/DolphinService/m;

    invoke-interface {v0}, Lcom/dolphin/browser/DolphinService/m;->b()V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/update/model/b;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    .line 104
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/dolphin/browser/update/f;->e()I

    move-result v2

    .line 45
    packed-switch v2, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 48
    :pswitch_0
    invoke-virtual {v1}, Lcom/dolphin/browser/update/f;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->b:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/k;->i()V

    .line 82
    invoke-static {}, Lcom/dolphin/browser/update/f;->a()Lcom/dolphin/browser/update/f;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/f;->a(I)V

    .line 83
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/k;->j()V

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "whistle"

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/b;->a()Lcom/dolphin/browser/update/model/UpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "confirm"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/k;->h()V

    .line 95
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/k;->j()V

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "whistle"

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/b;->a()Lcom/dolphin/browser/update/model/UpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/UpdateInfo;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    :cond_0
    return-void
.end method

.method public f()Lcom/dolphin/browser/update/model/b;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->c:Lcom/dolphin/browser/update/model/b;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->d:Lcom/dolphin/browser/DolphinService/m;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/k;->d:Lcom/dolphin/browser/DolphinService/m;

    invoke-interface {v0}, Lcom/dolphin/browser/DolphinService/m;->a()V

    .line 156
    :cond_0
    return-void
.end method
