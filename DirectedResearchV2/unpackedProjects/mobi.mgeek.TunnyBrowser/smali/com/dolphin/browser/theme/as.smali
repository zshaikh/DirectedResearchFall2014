.class Lcom/dolphin/browser/theme/as;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ar;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/dolphin/browser/theme/as;->a:Lcom/dolphin/browser/theme/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/dolphin/browser/theme/as;->a:Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 940
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 942
    invoke-interface {v0}, Lcom/dolphin/browser/theme/aq;->b()V

    goto :goto_0

    .line 944
    :cond_0
    return-void
.end method
