.class public Lcom/dolphin/browser/launcher/a;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/dolphin/browser/launcher/cc;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/a;->e:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/a;->c:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/a;->a:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/a;->e:Z

    .line 57
    return-void
.end method

.method public a(J)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    iput-boolean v5, p0, Lcom/dolphin/browser/launcher/a;->e:Z

    .line 47
    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/dolphin/browser/launcher/a;->a:J

    .line 48
    iget-boolean v2, p0, Lcom/dolphin/browser/launcher/a;->b:Z

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/dolphin/browser/launcher/a;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/dolphin/browser/launcher/a;->a:J

    sub-long v0, v3, v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    iput-boolean v5, p0, Lcom/dolphin/browser/launcher/a;->b:Z

    .line 52
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/cc;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/launcher/a;->d:Lcom/dolphin/browser/launcher/cc;

    .line 40
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/a;->e:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 61
    iput-boolean v4, p0, Lcom/dolphin/browser/launcher/a;->b:Z

    .line 62
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/a;->a:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Lcom/dolphin/browser/launcher/a;->a:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/dolphin/browser/launcher/a;->c:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/dolphin/browser/launcher/a;->a:J

    sub-long v0, v3, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/a;->b:Z

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iput-boolean v4, p0, Lcom/dolphin/browser/launcher/a;->e:Z

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/launcher/a;->d:Lcom/dolphin/browser/launcher/cc;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/launcher/a;->d:Lcom/dolphin/browser/launcher/cc;

    invoke-interface {v0, p0}, Lcom/dolphin/browser/launcher/cc;->a(Lcom/dolphin/browser/launcher/a;)V

    goto :goto_0
.end method
