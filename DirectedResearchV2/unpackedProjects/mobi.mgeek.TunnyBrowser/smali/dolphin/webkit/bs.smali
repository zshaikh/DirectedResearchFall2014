.class Ldolphin/webkit/bs;
.super Ljava/lang/Object;
.source "DeviceOrientationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Ldolphin/webkit/DeviceOrientationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Ldolphin/webkit/DeviceOrientationService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/bs;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldolphin/webkit/DeviceOrientationService;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Ldolphin/webkit/bs;->b:Ldolphin/webkit/DeviceOrientationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    sget-boolean v0, Ldolphin/webkit/bs;->a:Z

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

    .line 94
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/bs;->b:Ldolphin/webkit/DeviceOrientationService;

    invoke-static {v0}, Ldolphin/webkit/DeviceOrientationService;->a(Ldolphin/webkit/DeviceOrientationService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Ldolphin/webkit/bs;->b:Ldolphin/webkit/DeviceOrientationService;

    invoke-static {v0}, Ldolphin/webkit/DeviceOrientationService;->b(Ldolphin/webkit/DeviceOrientationService;)Ldolphin/webkit/DeviceMotionAndOrientationManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 98
    :cond_1
    return-void
.end method
