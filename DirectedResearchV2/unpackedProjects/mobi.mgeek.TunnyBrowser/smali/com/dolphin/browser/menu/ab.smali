.class Lcom/dolphin/browser/menu/ab;
.super Ljava/lang/Object;
.source "PanelMenuAddonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/dolphin/browser/menu/ab;->a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/menu/ab;->a:Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    invoke-static {v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->b(Lcom/dolphin/browser/menu/PanelMenuAddonItem;)Lcom/dolphin/browser/extensions/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 281
    return-void
.end method
