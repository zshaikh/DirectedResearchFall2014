.class public Lcom/dolphin/browser/menu/a/e;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dolphin/browser/menu/a/e;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/dolphin/browser/menu/a/e;->b:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 31
    const-string v0, "home"

    const-string v1, "longpressmenu"

    const-string v2, "viewimage"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/dolphin/browser/menu/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/menu/a/e;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/dolphin/browser/menu/a/e;->a:Landroid/content/Context;

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/menu/a/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/dolphin/browser/menu/a/e;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 39
    const/4 v0, 0x1

    return v0
.end method
