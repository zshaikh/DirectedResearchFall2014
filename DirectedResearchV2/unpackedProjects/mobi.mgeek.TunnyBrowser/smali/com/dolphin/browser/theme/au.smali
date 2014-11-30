.class Lcom/dolphin/browser/theme/au;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/dolphin/browser/theme/ar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ar;ZZ)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/dolphin/browser/theme/au;->c:Lcom/dolphin/browser/theme/ar;

    iput-boolean p2, p0, Lcom/dolphin/browser/theme/au;->a:Z

    iput-boolean p3, p0, Lcom/dolphin/browser/theme/au;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 970
    iget-object v0, p0, Lcom/dolphin/browser/theme/au;->c:Lcom/dolphin/browser/theme/ar;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/ar;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/dolphin/browser/theme/au;->c:Lcom/dolphin/browser/theme/ar;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/ar;)Ljava/util/List;

    move-result-object v0

    .line 972
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 973
    iget-boolean v2, p0, Lcom/dolphin/browser/theme/au;->a:Z

    iget-boolean v3, p0, Lcom/dolphin/browser/theme/au;->b:Z

    invoke-interface {v0, v2, v3}, Lcom/dolphin/browser/theme/aq;->a(ZZ)V

    goto :goto_0

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/au;->c:Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    .line 977
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/aq;

    .line 979
    iget-boolean v2, p0, Lcom/dolphin/browser/theme/au;->a:Z

    iget-boolean v3, p0, Lcom/dolphin/browser/theme/au;->b:Z

    invoke-interface {v0, v2, v3}, Lcom/dolphin/browser/theme/aq;->a(ZZ)V

    goto :goto_1

    .line 982
    :cond_1
    return-void
.end method
