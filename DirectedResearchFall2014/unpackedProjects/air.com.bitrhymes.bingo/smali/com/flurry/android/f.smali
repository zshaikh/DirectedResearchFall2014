.class final Lcom/flurry/android/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/f;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/flurry/android/f;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 376
    const/4 v0, 0x0

    .line 377
    invoke-static {p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/flurry/android/f;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    new-instance v1, Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/flurry/android/f;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 379
    iget-object v0, p0, Lcom/flurry/android/f;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 380
    iget-object v0, p0, Lcom/flurry/android/f;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 381
    iget-object v0, p0, Lcom/flurry/android/f;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)Z

    .line 382
    iget-object v0, p0, Lcom/flurry/android/f;->h:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)V

    move v0, v3

    .line 385
    :cond_0
    return v0
.end method
