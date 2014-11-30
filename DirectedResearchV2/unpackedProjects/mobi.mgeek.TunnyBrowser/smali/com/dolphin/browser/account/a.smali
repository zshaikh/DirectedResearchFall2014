.class public Lcom/dolphin/browser/account/a;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private a:Lcom/dolphin/browser/account/d;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/account/a;->b:Landroid/content/Context;

    .line 26
    sget-object v0, Lcom/dolphin/browser/account/d;->f:Lcom/dolphin/browser/account/d;

    .line 27
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 28
    sget-object v0, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    .line 36
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    .line 37
    return-void

    .line 29
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 30
    sget-object v0, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 32
    sget-object v0, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    goto :goto_0

    .line 33
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 34
    sget-object v0, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/dolphin/browser/account/d;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/account/a;->b:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    .line 22
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    const v0, 0x7f0e0356

    .line 84
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    .line 85
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v1

    .line 89
    sparse-switch v1, :sswitch_data_0

    .line 100
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :sswitch_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0353

    .line 92
    goto :goto_0

    .line 94
    :sswitch_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0354

    .line 95
    goto :goto_0

    .line 97
    :sswitch_2
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0355

    .line 98
    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_2
        0xb -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/account/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_1

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0189

    .line 56
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_2

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0241

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_3

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0655

    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_4

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0227

    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_0

    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00c7

    goto :goto_0

    .line 56
    :cond_5
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public c()I
    .locals 3

    .prologue
    .line 60
    const/4 v0, -0x1

    .line 61
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_1

    .line 62
    const/4 v0, 0x1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_2

    .line 64
    const/4 v0, 0x3

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_3

    .line 66
    const/4 v0, 0x2

    goto :goto_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_0

    .line 68
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v1, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/account/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/account/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0351

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03b7

    goto :goto_1
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    .line 109
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_1

    .line 110
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_2

    .line 112
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->h()Z

    move-result v0

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_3

    .line 114
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->f()Z

    move-result v0

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_4

    .line 116
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->e()Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_0

    .line 118
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/dolphin/browser/account/b;->a:[I

    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    invoke-virtual {v1}, Lcom/dolphin/browser/account/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_4
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/dolphin/browser/account/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->a:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_1

    .line 152
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->b:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_2

    .line 154
    invoke-static {}, Lcom/dolphin/browser/q/c/b;->a()Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/c/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->c:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_3

    .line 156
    invoke-static {}, Lcom/dolphin/browser/q/d/aa;->a()Lcom/dolphin/browser/q/d/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->d:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_4

    .line 158
    invoke-static {}, Lcom/dolphin/browser/q/b/ag;->a()Lcom/dolphin/browser/q/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/b/ag;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/account/a;->a:Lcom/dolphin/browser/account/d;

    sget-object v2, Lcom/dolphin/browser/account/d;->e:Lcom/dolphin/browser/account/d;

    if-ne v1, v2, :cond_0

    .line 160
    invoke-static {}, Lcom/dolphin/browser/q/a/j;->a()Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
