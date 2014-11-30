.class public Lcom/dolphin/browser/ui/c;
.super Ljava/lang/Object;
.source "ActionPatternMatcher.java"


# static fields
.field private static c:Lcom/dolphin/browser/ui/c;


# instance fields
.field private a:I

.field private b:Lcom/dolphin/browser/ui/e;

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/ui/c;->a:I

    .line 105
    new-instance v0, Lcom/dolphin/browser/ui/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/ui/d;-><init>(Lcom/dolphin/browser/ui/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public static a()Lcom/dolphin/browser/ui/c;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dolphin/browser/ui/c;->c:Lcom/dolphin/browser/ui/c;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/dolphin/browser/ui/c;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/c;-><init>()V

    sput-object v0, Lcom/dolphin/browser/ui/c;->c:Lcom/dolphin/browser/ui/c;

    .line 37
    :cond_0
    sget-object v0, Lcom/dolphin/browser/ui/c;->c:Lcom/dolphin/browser/ui/c;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/c;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->i()V

    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    const-wide/16 v1, 0x514

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    :cond_0
    iput v3, p0, Lcom/dolphin/browser/ui/c;->a:I

    .line 77
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 81
    iget v0, p0, Lcom/dolphin/browser/ui/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 82
    iput v2, p0, Lcom/dolphin/browser/ui/c;->a:I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/ui/c;->a:I

    if-eq v0, v2, :cond_0

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/c;->a:I

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget v0, p0, Lcom/dolphin/browser/ui/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->h()V

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/c;->a:I

    .line 94
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/c;->a:I

    .line 99
    return-void
.end method

.method private g()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->i()V

    .line 103
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->b:Lcom/dolphin/browser/ui/e;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->b:Lcom/dolphin/browser/ui/e;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/e;->a()V

    .line 138
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->b:Lcom/dolphin/browser/ui/e;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->b:Lcom/dolphin/browser/ui/e;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/e;->b()V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    return-void

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->c()V

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->d()V

    goto :goto_0

    .line 58
    :pswitch_3
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->e()V

    goto :goto_0

    .line 61
    :pswitch_4
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->f()V

    goto :goto_0

    .line 64
    :pswitch_5
    invoke-direct {p0}, Lcom/dolphin/browser/ui/c;->g()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->b:Lcom/dolphin/browser/ui/e;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->b:Lcom/dolphin/browser/ui/e;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/e;->a(Lcom/dolphin/browser/core/IWebView;)V

    .line 152
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/ui/e;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/ui/c;->b:Lcom/dolphin/browser/ui/e;

    .line 46
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/ui/c;->d:Landroid/os/Handler;

    const-wide/16 v1, 0x514

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    :cond_0
    return-void
.end method
