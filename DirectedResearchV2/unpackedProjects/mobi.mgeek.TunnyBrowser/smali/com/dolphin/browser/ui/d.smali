.class Lcom/dolphin/browser/ui/d;
.super Landroid/os/Handler;
.source "ActionPatternMatcher.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/ui/d;->a:Lcom/dolphin/browser/ui/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/ui/d;->a:Lcom/dolphin/browser/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/ui/c;->a(Lcom/dolphin/browser/ui/c;)V

    .line 112
    :cond_0
    return-void
.end method
