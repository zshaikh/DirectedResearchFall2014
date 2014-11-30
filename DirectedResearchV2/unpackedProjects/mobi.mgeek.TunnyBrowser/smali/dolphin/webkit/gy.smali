.class Ldolphin/webkit/gy;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:I

.field protected final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/gy;->b:Ljava/lang/Object;

    .line 45
    iput p1, p0, Ldolphin/webkit/gy;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Ldolphin/webkit/gy;->a:I

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Ldolphin/webkit/gy;->a:I

    invoke-static {v0}, Ldolphin/webkit/ThreadUtils;->nativeRunTask(I)V

    .line 51
    iget v0, p0, Ldolphin/webkit/gy;->a:I

    invoke-static {v0}, Ldolphin/webkit/ThreadUtils;->nativeReleaseTask(I)V

    .line 53
    :cond_0
    return-void
.end method
