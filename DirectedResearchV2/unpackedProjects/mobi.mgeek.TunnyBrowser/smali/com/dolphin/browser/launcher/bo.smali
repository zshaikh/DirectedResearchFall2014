.class Lcom/dolphin/browser/launcher/bo;
.super Ljava/lang/Object;
.source "LauncherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/bn;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/bn;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/dolphin/browser/launcher/bo;->a:Lcom/dolphin/browser/launcher/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bo;->a:Lcom/dolphin/browser/launcher/bn;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bn;->a:Lcom/dolphin/browser/launcher/bk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/launcher/bk;->j:Z

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bo;->a:Lcom/dolphin/browser/launcher/bn;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bn;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/bk;->j()V

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/launcher/bo;->a:Lcom/dolphin/browser/launcher/bn;

    iget-object v0, v0, Lcom/dolphin/browser/launcher/bn;->a:Lcom/dolphin/browser/launcher/bk;

    invoke-static {v0}, Lcom/dolphin/browser/launcher/bk;->b(Lcom/dolphin/browser/launcher/bk;)V

    .line 140
    return-void
.end method
