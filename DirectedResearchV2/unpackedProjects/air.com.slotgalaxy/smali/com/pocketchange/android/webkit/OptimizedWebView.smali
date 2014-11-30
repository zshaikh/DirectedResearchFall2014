.class public Lcom/pocketchange/android/webkit/OptimizedWebView;
.super Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/Timer;

.field private c:Ljava/util/TimerTask;

.field private d:J

.field private e:J

.field private f:Z

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/pocketchange/android/view/ViewUtils;->setOverScrollMode(Landroid/view/View;I)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setFocusableInTouchMode(Z)V

    .line 54
    new-instance v0, Lcom/pocketchange/android/webkit/OptimizedWebView$1;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/webkit/OptimizedWebView$1;-><init>(Lcom/pocketchange/android/webkit/OptimizedWebView;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    new-instance v0, Lcom/pocketchange/android/webkit/OptimizedWebView$2;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/webkit/OptimizedWebView$2;-><init>(Lcom/pocketchange/android/webkit/OptimizedWebView;)V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->h:Ljava/lang/Runnable;

    .line 89
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setRedrawConfiguration(JLjava/lang/Boolean;Lorg/json/JSONObject;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/pocketchange/android/webkit/OptimizedWebView;J)J
    .locals 0

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/pocketchange/android/webkit/OptimizedWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/pocketchange/android/webkit/OptimizedWebView;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/pocketchange/android/webkit/OptimizedWebView;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/pocketchange/android/webkit/OptimizedWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->d:J

    iget-wide v2, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->c:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->c:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->c:Ljava/util/TimerTask;

    .line 130
    :cond_2
    iget-wide v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->e:J

    iput-wide v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->d:J

    .line 131
    iget-wide v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->b:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Ljava/util/Timer;

    const-string v1, "OptimizedWebView.RedrawTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->b:Ljava/util/Timer;

    .line 137
    :cond_3
    new-instance v0, Lcom/pocketchange/android/webkit/OptimizedWebView$4;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/webkit/OptimizedWebView$4;-><init>(Lcom/pocketchange/android/webkit/OptimizedWebView;)V

    iput-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->c:Ljava/util/TimerTask;

    .line 142
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->c:Ljava/util/TimerTask;

    iget-wide v2, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->d:J

    iget-wide v4, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->d:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/pocketchange/android/webkit/OptimizedWebView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->b()V

    return-void
.end method

.method static synthetic d(Lcom/pocketchange/android/webkit/OptimizedWebView;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->a:Z

    return v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->postIfAttached(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/pocketchange/android/view/ViewUtils;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->a:Z

    .line 97
    invoke-super {p0}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->onAttachedToWindow()V

    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pocketchange/android/view/ViewUtils;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 109
    iput-object v1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->b:Ljava/util/Timer;

    .line 110
    iput-object v1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->c:Ljava/util/TimerTask;

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView;->d:J

    .line 112
    new-instance v0, Lcom/pocketchange/android/webkit/OptimizedWebView$3;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/webkit/OptimizedWebView$3;-><init>(Lcom/pocketchange/android/webkit/OptimizedWebView;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->postWhenAttached(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/pocketchange/android/webkit/WebViewWithAttachQueue;->onDetachedFromWindow()V

    .line 119
    return-void
.end method

.method public setRedrawConfiguration(JLjava/lang/Boolean;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "period"    # J
    .param p3, "appendElement"    # Ljava/lang/Boolean;
    .param p4, "filter"    # Lorg/json/JSONObject;

    .prologue
    const-string v0, "isHardwareAccelerated"

    .line 147
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 151
    if-eqz p4, :cond_2

    .line 153
    :try_start_0
    invoke-static {p4}, Lcom/pocketchange/android/Util;->deviceMatchesFilter(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v0, "isHardwareAccelerated"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    const-string v0, "isHardwareAccelerated"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_2
    if-nez p3, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    move v5, v0

    .line 172
    :goto_1
    new-instance v0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/pocketchange/android/webkit/OptimizedWebView$5;-><init>(Lcom/pocketchange/android/webkit/OptimizedWebView;Ljava/util/concurrent/atomic/AtomicReference;JZ)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->postWhenAttached(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed filter criteria"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 164
    :cond_3
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v5, v0

    goto :goto_1
.end method
