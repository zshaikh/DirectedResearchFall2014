.class Lmobi/mgeek/TunnyBrowser/ag;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 2298
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ag;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 2303
    const-string v0, "Click Address Bar To Show SearchDialog"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->a(Ljava/lang/String;)J

    .line 2304
    return-void
.end method
