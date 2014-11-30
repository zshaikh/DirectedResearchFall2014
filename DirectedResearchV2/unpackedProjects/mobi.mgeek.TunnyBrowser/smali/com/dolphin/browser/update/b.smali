.class Lcom/dolphin/browser/update/b;
.super Ljava/lang/Object;
.source "UpdateDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/update/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/update/a;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dolphin/browser/update/b;->a:Lcom/dolphin/browser/update/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 205
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/update/b;->a:Lcom/dolphin/browser/update/a;

    invoke-static {v0}, Lcom/dolphin/browser/update/a;->a(Lcom/dolphin/browser/update/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "autoupdate"

    .line 207
    :goto_0
    const-string v1, "update services"

    const-string v2, "back"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_1
    const-string v0, "manualupdate"

    goto :goto_0
.end method
