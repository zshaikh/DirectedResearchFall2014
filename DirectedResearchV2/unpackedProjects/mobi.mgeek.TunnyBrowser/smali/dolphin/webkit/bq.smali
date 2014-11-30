.class Ldolphin/webkit/bq;
.super Ljava/lang/Object;
.source "DeviceMotionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Ldolphin/webkit/DeviceMotionService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Ldolphin/webkit/DeviceMotionService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/bq;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldolphin/webkit/DeviceMotionService;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ldolphin/webkit/bq;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    sget-boolean v0, Ldolphin/webkit/bq;->a:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/bq;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionService;->a(Ldolphin/webkit/DeviceMotionService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Ldolphin/webkit/bq;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionService;->b(Ldolphin/webkit/DeviceMotionService;)Ldolphin/webkit/DeviceMotionAndOrientationManager;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V

    .line 96
    :cond_1
    return-void
.end method
