.class Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.super Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;
.source "MMAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MMAdImplRedirectionListenerImpl"
.end annotation


# instance fields
.field adImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 2
    .param p1, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 346
    if-eqz p1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 349
    iget-wide v0, p1, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    iput-wide v0, p0, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->creatorAdImplInternalId:J

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdProperties()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 399
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 400
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getAdProperties()Lorg/json/JSONObject;

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivityStartable(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 366
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 367
    .local v2, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 370
    .local v3, "c":Landroid/content/Context;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 372
    move-object v0, v3

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 373
    .local v1, "a":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    const/4 v4, 0x0

    .line 379
    .end local v1    # "a":Landroid/app/Activity;
    .end local v3    # "c":Landroid/content/Context;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public startingActivity(Landroid/net/Uri;)V
    .locals 3
    .param p1, "destinationUri"    # Landroid/net/Uri;

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V

    .line 386
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 389
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_1

    .line 391
    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Event;->overlayOpened(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 394
    .end local v0    # "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    :cond_1
    return-void
.end method

.method public updateLastVideoViewedTime()V
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMAdImpl;

    .line 358
    .local v0, "adImpl":Lcom/fusepowered/m1/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 359
    iget-object v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m1/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    :cond_0
    return-void
.end method
