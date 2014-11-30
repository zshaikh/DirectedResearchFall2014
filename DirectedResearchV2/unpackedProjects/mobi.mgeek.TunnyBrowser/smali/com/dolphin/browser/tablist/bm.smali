.class Lcom/dolphin/browser/tablist/bm;
.super Ljava/lang/Object;
.source "TabListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/bl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/bl;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bm;->a:Lcom/dolphin/browser/tablist/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bm;->a:Lcom/dolphin/browser/tablist/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bl;->notifyDataSetChanged()V

    .line 156
    return-void
.end method
