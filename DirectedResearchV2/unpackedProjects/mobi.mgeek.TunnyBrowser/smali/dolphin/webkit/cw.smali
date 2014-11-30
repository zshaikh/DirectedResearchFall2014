.class final Ldolphin/webkit/cw;
.super Ljava/util/TimerTask;
.source "HTML5Audio.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/HTML5Audio;


# direct methods
.method private constructor <init>(Ldolphin/webkit/HTML5Audio;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Ldolphin/webkit/cw;->a:Ldolphin/webkit/HTML5Audio;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/HTML5Audio;Ldolphin/webkit/ct;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ldolphin/webkit/cw;-><init>(Ldolphin/webkit/HTML5Audio;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Ldolphin/webkit/cw;->a:Ldolphin/webkit/HTML5Audio;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ldolphin/webkit/HTML5Audio;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method
