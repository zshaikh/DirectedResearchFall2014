.class Ldolphin/webkit/br;
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
    .line 106
    const-class v0, Ldolphin/webkit/DeviceMotionService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/br;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ldolphin/webkit/DeviceMotionService;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 109
    sget-boolean v0, Ldolphin/webkit/br;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionService;->a(Ldolphin/webkit/DeviceMotionService;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionService;->b(Ldolphin/webkit/DeviceMotionService;)Ldolphin/webkit/DeviceMotionAndOrientationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionService;->c(Ldolphin/webkit/DeviceMotionService;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionService;->b(Ldolphin/webkit/DeviceMotionService;)Ldolphin/webkit/DeviceMotionAndOrientationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/Double;

    iget-object v2, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v2}, Ldolphin/webkit/DeviceMotionService;->c(Ldolphin/webkit/DeviceMotionService;)[F

    move-result-object v2

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    new-instance v2, Ljava/lang/Double;

    iget-object v3, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v3}, Ldolphin/webkit/DeviceMotionService;->c(Ldolphin/webkit/DeviceMotionService;)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    new-instance v3, Ljava/lang/Double;

    iget-object v4, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v4}, Ldolphin/webkit/DeviceMotionService;->c(Ldolphin/webkit/DeviceMotionService;)[F

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    const-wide/high16 v4, 0x4059000000000000L

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/DeviceMotionAndOrientationManager;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V

    .line 114
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0}, Ldolphin/webkit/DeviceMotionService;->e(Ldolphin/webkit/DeviceMotionService;)Ldolphin/util/j;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v1}, Ldolphin/webkit/DeviceMotionService;->d(Ldolphin/webkit/DeviceMotionService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/util/j;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    iget-object v0, p0, Ldolphin/webkit/br;->b:Ldolphin/webkit/DeviceMotionService;

    invoke-static {v0, v6}, Ldolphin/webkit/DeviceMotionService;->a(Ldolphin/webkit/DeviceMotionService;Z)Z

    .line 117
    return-void
.end method
