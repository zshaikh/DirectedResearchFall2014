.class public final Lcom/dolphin/browser/dolphinwebkit/a;
.super Ldolphin/util/Tracker$Delegate;
.source "DolphinTrackerDelegate.java"


# static fields
.field private static a:Ldolphin/util/Tracker$Delegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ldolphin/util/Tracker$Delegate;-><init>()V

    .line 22
    invoke-static {p0}, Ldolphin/util/Tracker;->setTrackerDelegate(Ldolphin/util/Tracker$Delegate;)V

    .line 23
    return-void
.end method

.method public static a()Ldolphin/util/Tracker$Delegate;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/a;->a:Ldolphin/util/Tracker$Delegate;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/a;

    invoke-direct {v0}, Lcom/dolphin/browser/dolphinwebkit/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/a;->a:Ldolphin/util/Tracker$Delegate;

    .line 18
    :cond_0
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/a;->a:Ldolphin/util/Tracker$Delegate;

    return-object v0
.end method


# virtual methods
.method public forceTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 38
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 29
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method
