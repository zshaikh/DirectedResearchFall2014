.class Lcom/dolphin/browser/theme/aw;
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
    .line 1016
    iput-object p1, p0, Lcom/dolphin/browser/theme/aw;->a:Lcom/dolphin/browser/theme/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/dolphin/browser/theme/aw;->a:Lcom/dolphin/browser/theme/ar;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/ar;)Ljava/util/List;

    move-result-object v0

    .line 1021
    if-eqz v0, :cond_0

    .line 1022
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 1023
    invoke-interface {v0}, Lcom/dolphin/browser/theme/aq;->a()V

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/aw;->a:Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 1027
    if-eqz v1, :cond_1

    .line 1028
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 1030
    invoke-interface {v0}, Lcom/dolphin/browser/theme/aq;->a()V

    goto :goto_1

    .line 1033
    :cond_1
    return-void
.end method
