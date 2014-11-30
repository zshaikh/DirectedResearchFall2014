.class Lmobi/mgeek/TunnyBrowser/er;
.super Ljava/lang/Object;
.source "ExitManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/ei;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ei;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/er;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/er;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ei;->a(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->c(Landroid/content/ContentResolver;)V

    .line 292
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/er;->a:Lmobi/mgeek/TunnyBrowser/ei;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/er;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->D()Z

    move-result v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/er;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/ei;->b(Lmobi/mgeek/TunnyBrowser/ei;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->E()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/ei;->a(ZZ)V

    .line 293
    return-void
.end method
