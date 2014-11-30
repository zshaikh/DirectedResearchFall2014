.class Lmobi/mgeek/TunnyBrowser/bt;
.super Ljava/lang/Object;
.source "BrowserPluginList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bt;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bt;->a:Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->onBackPressed()V

    .line 118
    return-void
.end method
