.class Lcom/dolphin/browser/provider/aa;
.super Landroid/database/DataSetObserver;
.source "SpeedDialManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/provider/y;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/provider/y;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/dolphin/browser/provider/aa;->a:Lcom/dolphin/browser/provider/y;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/provider/aa;->a:Lcom/dolphin/browser/provider/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/y;->a(Lcom/dolphin/browser/provider/y;Z)V

    .line 427
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/dolphin/browser/provider/aa;->a:Lcom/dolphin/browser/provider/y;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/y;->a(Lcom/dolphin/browser/provider/y;Z)V

    .line 432
    return-void
.end method
