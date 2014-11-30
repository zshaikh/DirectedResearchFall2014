.class Lcom/dolphin/browser/provider/u;
.super Landroid/database/DataSetObserver;
.source "MergedCursor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/provider/t;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/provider/t;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/dolphin/browser/provider/u;->a:Lcom/dolphin/browser/provider/t;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dolphin/browser/provider/u;->a:Lcom/dolphin/browser/provider/t;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/t;->a(Lcom/dolphin/browser/provider/t;I)I

    .line 19
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dolphin/browser/provider/u;->a:Lcom/dolphin/browser/provider/t;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/provider/t;->b(Lcom/dolphin/browser/provider/t;I)I

    .line 24
    return-void
.end method
