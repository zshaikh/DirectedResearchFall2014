.class Lcom/dolphin/browser/share/tabpush/e;
.super Ljava/lang/Object;
.source "TabPushShareContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/data/DeviceInfo;

.field final synthetic b:Lcom/dolphin/browser/share/tabpush/d;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/tabpush/d;Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dolphin/browser/share/tabpush/e;->b:Lcom/dolphin/browser/share/tabpush/d;

    iput-object p2, p0, Lcom/dolphin/browser/share/tabpush/e;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 263
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/e;->b:Lcom/dolphin/browser/share/tabpush/d;

    invoke-static {v0}, Lcom/dolphin/browser/share/tabpush/d;->a(Lcom/dolphin/browser/share/tabpush/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 328
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 269
    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/e;->b:Lcom/dolphin/browser/share/tabpush/d;

    invoke-static {v0}, Lcom/dolphin/browser/share/tabpush/d;->a(Lcom/dolphin/browser/share/tabpush/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 275
    if-nez v1, :cond_2

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/e;->b:Lcom/dolphin/browser/share/tabpush/d;

    invoke-static {v0}, Lcom/dolphin/browser/share/tabpush/d;->a(Lcom/dolphin/browser/share/tabpush/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 281
    if-nez v0, :cond_3

    move-object v0, v1

    .line 284
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/share/tabpush/e;->a:Lcom/dolphin/browser/push/data/DeviceInfo;

    iget-object v3, v3, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    new-instance v4, Lcom/dolphin/browser/share/tabpush/f;

    invoke-direct {v4, p0}, Lcom/dolphin/browser/share/tabpush/f;-><init>(Lcom/dolphin/browser/share/tabpush/e;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/dolphin/browser/push/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/push/as;)V

    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/e;->b:Lcom/dolphin/browser/share/tabpush/d;

    invoke-static {v0}, Lcom/dolphin/browser/share/tabpush/d;->a(Lcom/dolphin/browser/share/tabpush/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
