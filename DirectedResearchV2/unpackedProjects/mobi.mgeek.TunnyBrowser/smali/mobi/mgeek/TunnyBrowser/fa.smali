.class Lmobi/mgeek/TunnyBrowser/fa;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ew;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ew;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fa;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fa;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-static {v0, p2}, Lmobi/mgeek/TunnyBrowser/ew;->a(Lmobi/mgeek/TunnyBrowser/ew;I)V

    .line 113
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fa;->a:Lmobi/mgeek/TunnyBrowser/ew;

    invoke-static {v0, p2}, Lmobi/mgeek/TunnyBrowser/ew;->b(Lmobi/mgeek/TunnyBrowser/ew;I)V

    .line 114
    return-void
.end method
