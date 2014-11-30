.class Lmobi/mgeek/TunnyBrowser/bc;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 6664
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/bc;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/bc;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 6669
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bc;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->p(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/bc;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Landroid/content/Context;Z)V

    .line 6670
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/bc;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e02b9

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 6672
    return-void
.end method
