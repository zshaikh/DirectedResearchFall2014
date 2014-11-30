.class final Ldolphin/webkit/DeviceMotionAndOrientationManager;
.super Ljava/lang/Object;
.source "DeviceMotionAndOrientationManager.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ldolphin/webkit/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Ldolphin/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldolphin/webkit/WebViewCore;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->b:Ldolphin/webkit/WebViewCore;

    .line 34
    return-void
.end method

.method private static native nativeOnMotionChange(Ldolphin/webkit/WebViewCore;ZDZDZDD)V
.end method

.method private static native nativeOnOrientationChange(Ldolphin/webkit/WebViewCore;ZDZDZD)V
.end method

.method private static native nativeSetMockOrientation(Ldolphin/webkit/WebViewCore;ZDZDZD)V
.end method

.method private static native nativeSetUseMock(Ldolphin/webkit/WebViewCore;)V
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 41
    sget-boolean v0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->b:Ldolphin/webkit/WebViewCore;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->nativeSetUseMock(Ldolphin/webkit/WebViewCore;)V

    .line 43
    return-void
.end method

.method public a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 64
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->b:Ldolphin/webkit/WebViewCore;

    if-eqz p1, :cond_1

    move v1, v7

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    if-eqz p2, :cond_3

    move v4, v7

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_3
    if-eqz p3, :cond_5

    :goto_4
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :cond_0
    invoke-static/range {v0 .. v9}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->nativeOnOrientationChange(Ldolphin/webkit/WebViewCore;ZDZDZD)V

    .line 68
    return-void

    :cond_1
    move v1, v10

    .line 64
    goto :goto_0

    :cond_2
    move-wide v2, v8

    goto :goto_1

    :cond_3
    move v4, v10

    goto :goto_2

    :cond_4
    move-wide v5, v8

    goto :goto_3

    :cond_5
    move v7, v10

    goto :goto_4
.end method

.method public a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V
    .locals 12

    .prologue
    .line 57
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->b:Ldolphin/webkit/WebViewCore;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_3
    if-eqz p3, :cond_4

    const/4 v7, 0x1

    :goto_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_5
    move-wide/from16 v10, p4

    invoke-static/range {v0 .. v11}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->nativeOnMotionChange(Ldolphin/webkit/WebViewCore;ZDZDZDD)V

    .line 62
    return-void

    .line 57
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v8, 0x0

    goto :goto_5
.end method

.method public a(ZDZDZD)V
    .locals 10

    .prologue
    .line 50
    sget-boolean v0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/DeviceMotionAndOrientationManager;->b:Ldolphin/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->nativeSetMockOrientation(Ldolphin/webkit/WebViewCore;ZDZDZD)V

    .line 53
    return-void
.end method
