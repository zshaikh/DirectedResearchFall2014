.class Lcom/dolphin/browser/theme/d/e;
.super Landroid/os/Handler;
.source "ThemeInstallerImpl.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/d/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/d/d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/theme/d/e;->a:Lcom/dolphin/browser/theme/d/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/theme/d/e;->a:Lcom/dolphin/browser/theme/d/d;

    invoke-static {v0}, Lcom/dolphin/browser/theme/d/d;->a(Lcom/dolphin/browser/theme/d/d;)Lcom/dolphin/browser/theme/d/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/d/i;->a(Landroid/os/Message;)V

    .line 84
    return-void
.end method
