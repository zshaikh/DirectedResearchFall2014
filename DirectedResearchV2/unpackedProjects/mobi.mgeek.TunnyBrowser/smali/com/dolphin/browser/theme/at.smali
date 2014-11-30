.class Lcom/dolphin/browser/theme/at;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/data/s;

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/theme/ar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ar;Lcom/dolphin/browser/theme/data/s;Z)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/dolphin/browser/theme/at;->c:Lcom/dolphin/browser/theme/ar;

    iput-object p2, p0, Lcom/dolphin/browser/theme/at;->a:Lcom/dolphin/browser/theme/data/s;

    iput-boolean p3, p0, Lcom/dolphin/browser/theme/at;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 954
    iget-object v0, p0, Lcom/dolphin/browser/theme/at;->c:Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 955
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 957
    iget-object v2, p0, Lcom/dolphin/browser/theme/at;->a:Lcom/dolphin/browser/theme/data/s;

    iget-boolean v3, p0, Lcom/dolphin/browser/theme/at;->b:Z

    invoke-interface {v0, v2, v3}, Lcom/dolphin/browser/theme/aq;->a(Lcom/dolphin/browser/theme/data/s;Z)V

    goto :goto_0

    .line 959
    :cond_0
    return-void
.end method
