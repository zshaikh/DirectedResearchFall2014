.class Ldolphin/util/k;
.super Landroid/os/Handler;
.source "PriorityHandler.java"


# instance fields
.field final synthetic a:Ldolphin/util/j;


# direct methods
.method public constructor <init>(Ldolphin/util/j;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Ldolphin/util/k;->a:Ldolphin/util/j;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ldolphin/util/j;Landroid/os/Handler$Callback;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Ldolphin/util/k;->a:Ldolphin/util/j;

    .line 57
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ldolphin/util/j;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Ldolphin/util/k;->a:Ldolphin/util/j;

    .line 53
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ldolphin/util/j;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Ldolphin/util/k;->a:Ldolphin/util/j;

    .line 61
    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 62
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ldolphin/util/k;->a:Ldolphin/util/j;

    invoke-virtual {v0, p1}, Ldolphin/util/j;->handleMessage(Landroid/os/Message;)V

    .line 67
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p1, p0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
