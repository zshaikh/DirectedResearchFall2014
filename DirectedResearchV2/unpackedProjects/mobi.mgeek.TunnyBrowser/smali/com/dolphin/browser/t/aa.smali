.class Lcom/dolphin/browser/t/aa;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dolphin/browser/core/ITab;

.field final synthetic c:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;ZLcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/dolphin/browser/t/aa;->c:Lcom/dolphin/browser/t/l;

    iput-boolean p2, p0, Lcom/dolphin/browser/t/aa;->a:Z

    iput-object p3, p0, Lcom/dolphin/browser/t/aa;->b:Lcom/dolphin/browser/core/ITab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2419
    iget-object v0, p0, Lcom/dolphin/browser/t/aa;->c:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->b(Lcom/dolphin/browser/t/l;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2420
    iget-object v0, p0, Lcom/dolphin/browser/t/aa;->c:Lcom/dolphin/browser/t/l;

    invoke-static {v0, v1}, Lcom/dolphin/browser/t/l;->g(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;)Lcom/dolphin/browser/core/ITab;

    .line 2422
    iget-boolean v0, p0, Lcom/dolphin/browser/t/aa;->a:Z

    if-eqz v0, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/dolphin/browser/t/aa;->c:Lcom/dolphin/browser/t/l;

    iget-object v1, p0, Lcom/dolphin/browser/t/aa;->b:Lcom/dolphin/browser/core/ITab;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/core/ITab;Z)V

    .line 2425
    :cond_0
    return-void
.end method
