.class Lmobi/mgeek/TunnyBrowser/bp;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/bo;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/bo;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3183
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bp;->b:Lmobi/mgeek/TunnyBrowser/bo;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/bp;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3187
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bp;->b:Lmobi/mgeek/TunnyBrowser/bo;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bp;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/bo;->a(Lmobi/mgeek/TunnyBrowser/bo;Landroid/view/View;)V

    .line 3188
    return-void
.end method
