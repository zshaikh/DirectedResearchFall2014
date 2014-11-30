.class Lcom/dolphin/browser/bookmark/bi;
.super Ljava/lang/Object;
.source "BookmarkMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/be;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bi;->a:Lcom/dolphin/browser/bookmark/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bi;->a:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/be;->a(Lcom/dolphin/browser/bookmark/be;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 316
    return-void
.end method
