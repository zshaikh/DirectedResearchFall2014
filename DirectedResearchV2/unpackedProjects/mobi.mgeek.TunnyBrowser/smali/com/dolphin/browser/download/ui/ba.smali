.class Lcom/dolphin/browser/download/ui/ba;
.super Landroid/database/DataSetObserver;
.source "DownloadedCategoryGridAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/ay;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/download/ui/ay;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ba;->a:Lcom/dolphin/browser/download/ui/ay;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/download/ui/ay;Lcom/dolphin/browser/download/ui/az;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/ba;-><init>(Lcom/dolphin/browser/download/ui/ay;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ba;->a:Lcom/dolphin/browser/download/ui/ay;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/ay;->b(Lcom/dolphin/browser/download/ui/ay;)V

    .line 125
    return-void
.end method
