.class Lmobi/mgeek/TunnyBrowser/ck;
.super Ljava/lang/Object;
.source "BrowserYesNoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ck;->b:Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ck;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ck;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->k(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/l/e;->g()V

    .line 94
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ck;->b:Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ck;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;->a(Lmobi/mgeek/TunnyBrowser/BrowserYesNoPreference;Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ck;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ck;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 98
    :cond_0
    return-void
.end method
