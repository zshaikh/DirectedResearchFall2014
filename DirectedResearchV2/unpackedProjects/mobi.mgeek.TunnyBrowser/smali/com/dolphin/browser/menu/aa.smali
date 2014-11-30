.class Lcom/dolphin/browser/menu/aa;
.super Landroid/os/Handler;
.source "PanelMenuAddonItem.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/dolphin/browser/menu/aa;->a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v2, "path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lcom/dolphin/browser/menu/aa;->a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    invoke-static {v2, v1, v0}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Lcom/dolphin/browser/menu/PanelMenuAddonItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method
