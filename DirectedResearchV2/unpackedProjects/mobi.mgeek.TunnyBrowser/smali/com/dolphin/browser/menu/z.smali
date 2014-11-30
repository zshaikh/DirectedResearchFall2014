.class Lcom/dolphin/browser/menu/z;
.super Ljava/lang/Object;
.source "PanelMenuAddonItem.java"

# interfaces
.implements Lcom/dolphin/browser/b/l;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dolphin/browser/menu/z;->a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 214
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 215
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "path"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 218
    iget-object v1, p0, Lcom/dolphin/browser/menu/z;->a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    invoke-static {v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void
.end method
