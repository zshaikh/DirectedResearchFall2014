.class Lcom/dolphin/browser/tablist/s;
.super Ljava/lang/Object;
.source "CloudTabListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/j;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/dolphin/browser/tablist/s;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dolphin/browser/tablist/s;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->d(Lcom/dolphin/browser/tablist/j;)V

    .line 382
    return-void
.end method
