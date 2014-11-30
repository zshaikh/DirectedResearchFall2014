.class public Lcom/dolphin/browser/ui/ActionDetector;
.super Ljava/lang/Object;
.source "ActionDetector.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepPublic;
.end annotation


# static fields
.field public static final ACTION_MOTIONLESS:I = 0x0

.field public static final ACTION_SCROLL_DOWN:I = 0x2

.field public static final ACTION_SCROLL_TO_TOP:I = 0x5

.field public static final ACTION_SCROLL_UP:I = 0x3

.field public static final ACTION_TOUCH_DOWN:I = 0x1


# instance fields
.field private a:Lcom/dolphin/browser/ui/c;

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:Lcom/dolphin/browser/core/IWebView;

.field private e:I

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->e:I

    .line 48
    new-instance v0, Lcom/dolphin/browser/ui/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/a;-><init>(Lcom/dolphin/browser/ui/ActionDetector;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->f:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/dolphin/browser/ui/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/b;-><init>(Lcom/dolphin/browser/ui/ActionDetector;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->g:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/dolphin/browser/ui/ActionDetector;->d:Lcom/dolphin/browser/core/IWebView;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->b:Landroid/os/Handler;

    .line 33
    invoke-static {}, Lcom/dolphin/browser/ui/c;->a()Lcom/dolphin/browser/ui/c;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->a:Lcom/dolphin/browser/ui/c;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/ActionDetector;)Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->d:Lcom/dolphin/browser/core/IWebView;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    if-lez p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->d:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getTitleHeight()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 82
    iput v1, p0, Lcom/dolphin/browser/ui/ActionDetector;->e:I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->d:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->getTitleHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 87
    iget v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->e:I

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->e:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/ActionDetector;)Lcom/dolphin/browser/ui/c;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->a:Lcom/dolphin/browser/ui/c;

    return-object v0
.end method


# virtual methods
.method public onScrollChanged(II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    iget v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->c:I

    sub-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->c:I

    .line 60
    iget v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->c:I

    .line 61
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v1, -0x8

    if-gt v0, v1, :cond_1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/ActionDetector;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolphin/browser/ui/ActionDetector;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object v1, p0, Lcom/dolphin/browser/ui/ActionDetector;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/dolphin/browser/ui/ActionDetector;->g:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    iput v5, p0, Lcom/dolphin/browser/ui/ActionDetector;->c:I

    .line 65
    if-lez v0, :cond_3

    .line 66
    iget-object v1, p0, Lcom/dolphin/browser/ui/ActionDetector;->a:Lcom/dolphin/browser/ui/c;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/c;->a(I)V

    .line 70
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/ui/ActionDetector;->a(II)V

    .line 72
    :cond_1
    if-nez p1, :cond_2

    .line 73
    iput v5, p0, Lcom/dolphin/browser/ui/ActionDetector;->e:I

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->a:Lcom/dolphin/browser/ui/c;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/c;->a(I)V

    .line 77
    :cond_2
    return-void

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/ui/ActionDetector;->a:Lcom/dolphin/browser/ui/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/c;->a(I)V

    goto :goto_0
.end method

.method public onTouchDown()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->a:Lcom/dolphin/browser/ui/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/c;->a(I)V

    .line 39
    return-void
.end method

.method public onTouchUp()V
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->e:I

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/ActionDetector;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/ui/ActionDetector;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_0
    return-void
.end method
