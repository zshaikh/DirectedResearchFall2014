.class Lmobi/mgeek/TunnyBrowser/ak;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/i;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/i;)V
    .locals 0

    .prologue
    .line 3897
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ak;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ak;->a:Lmobi/mgeek/TunnyBrowser/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 3901
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ak;->a:Lmobi/mgeek/TunnyBrowser/i;

    invoke-virtual {v0, p1, p2}, Lmobi/mgeek/TunnyBrowser/i;->onClick(Landroid/content/DialogInterface;I)Z

    .line 3902
    return-void
.end method
