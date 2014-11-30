.class Lcom/dolphin/browser/bookmark/k;
.super Ljava/lang/Object;
.source "BaseBookmarkAdapter.java"

# interfaces
.implements Lcom/dolphin/browser/bookmark/n;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/j;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/k;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/dolphin/browser/bookmark/a/a;)V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p2, p1}, Lcom/dolphin/browser/bookmark/a/a;->a(Z)V

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/k;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->z()Lcom/dolphin/browser/bookmark/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/k;->a:Lcom/dolphin/browser/bookmark/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->z()Lcom/dolphin/browser/bookmark/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a;->b()V

    .line 353
    :cond_0
    return-void
.end method
