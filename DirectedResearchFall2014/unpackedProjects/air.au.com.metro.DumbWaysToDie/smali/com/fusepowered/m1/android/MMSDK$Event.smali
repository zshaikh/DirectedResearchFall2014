.class Lcom/fusepowered/m1/android/MMSDK$Event;
.super Ljava/lang/Object;
.source "MMSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# static fields
.field public static final INTENT_EMAIL:Ljava/lang/String; = "email"

.field public static final INTENT_EXTERNAL_BROWSER:Ljava/lang/String; = "browser"

.field public static final INTENT_MAPS:Ljava/lang/String; = "geo"

.field public static final INTENT_MARKET:Ljava/lang/String; = "market"

.field public static final INTENT_PHONE_CALL:Ljava/lang/String; = "tel"

.field public static final INTENT_STREAMING_VIDEO:Ljava/lang/String; = "streamingVideo"

.field public static final INTENT_TXT_MESSAGE:Ljava/lang/String; = "sms"

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field static final KEY_INTENT_TYPE:Ljava/lang/String; = "intentType"

.field static final KEY_INTERNAL_ID:Ljava/lang/String; = "internalId"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adSingleTap(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 382
    if-nez p0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    new-instance v0, Lcom/fusepowered/m1/android/MMSDK$Event$2;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMSDK$Event$2;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 405
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 408
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static displayStarted(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 456
    if-nez p0, :cond_0

    .line 458
    const-string v0, "No Context in the listener: "

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 466
    :goto_0
    return-void

    .line 461
    :cond_0
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 465
    :cond_1
    invoke-static {p0}, Lcom/fusepowered/m1/android/MMSDK$Event;->overlayOpened(Lcom/fusepowered/m1/android/MMAdImpl;)V

    goto :goto_0
.end method

.method static fetchStartedCaching(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 424
    if-nez p0, :cond_1

    .line 426
    const-string v0, "No Context in the listener: "

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    new-instance v0, Lcom/fusepowered/m1/android/MMSDK$Event$3;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMSDK$Event$3;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 448
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static intentStarted(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "adImplId"    # J

    .prologue
    .line 415
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 419
    :cond_0
    return-void
.end method

.method protected static logEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "logString"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string v0, "Logging event to: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    new-instance v0, Lcom/fusepowered/m1/android/MMSDK$Event$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMSDK$Event$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method static overlayClosed(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 512
    if-nez p0, :cond_1

    .line 514
    const-string v0, "No Context in the listener: "

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    new-instance v0, Lcom/fusepowered/m1/android/MMSDK$Event$5;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMSDK$Event$5;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 536
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static overlayOpened(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 3
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 471
    if-nez p0, :cond_0

    .line 473
    const-string v0, "No Context in the listener: "

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 476
    :cond_0
    new-instance v0, Lcom/fusepowered/m1/android/MMSDK$Event$4;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMSDK$Event$4;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 495
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2}, Lcom/fusepowered/m1/android/MMSDK$Event;->overlayOpenedBroadCast(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method static overlayOpenedBroadCast(Landroid/content/Context;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adImplId"    # J

    .prologue
    .line 503
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 507
    :cond_0
    return-void
.end method

.method static requestCompleted(Lcom/fusepowered/m1/android/MMAdImpl;)V
    .locals 5
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;

    .prologue
    .line 545
    if-nez p0, :cond_1

    .line 547
    const-string v1, "No Context in the listener: "

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    new-instance v1, Lcom/fusepowered/m1/android/MMSDK$Event$6;

    invoke-direct {v1, p0}, Lcom/fusepowered/m1/android/MMSDK$Event$6;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;)V

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getRequestCompletedAction()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v1, v2, v3, v4}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static requestFailed(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V
    .locals 5
    .param p0, "adImpl"    # Lcom/fusepowered/m1/android/MMAdImpl;
    .param p1, "error"    # Lcom/fusepowered/m1/android/MMException;

    .prologue
    .line 580
    if-nez p0, :cond_1

    .line 582
    const-string v1, "No Context in the listener: "

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->w(Ljava/lang/String;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    new-instance v1, Lcom/fusepowered/m1/android/MMSDK$Event$7;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/m1/android/MMSDK$Event$7;-><init>(Lcom/fusepowered/m1/android/MMAdImpl;Lcom/fusepowered/m1/android/MMException;)V

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 603
    # getter for: Lcom/fusepowered/m1/android/MMSDK;->isBroadcastingEvents:Z
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getRequestFailedAction()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    iget-wide v3, p0, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-static {v1, v2, v3, v4}, Lcom/fusepowered/m1/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method private static final sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adImplId"    # J

    .prologue
    .line 612
    if-eqz p0, :cond_1

    .line 614
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 617
    const-string v1, "internalId"

    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 619
    :cond_0
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v1, "intentType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 624
    const-string v1, " Type[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 629
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @@ Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->v(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    return-void

    .line 627
    .restart local v0    # "type":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
