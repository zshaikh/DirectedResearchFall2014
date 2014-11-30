.class Lcom/dolphin/browser/tablist/o;
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
    .line 251
    iput-object p1, p0, Lcom/dolphin/browser/tablist/o;->a:Lcom/dolphin/browser/tablist/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/tablist/o;->a:Lcom/dolphin/browser/tablist/j;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/j;->d(Lcom/dolphin/browser/tablist/j;)V

    .line 257
    return-void
.end method
