.class Lmobi/mgeek/TunnyBrowser/by;
.super Ljava/lang/Object;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/by;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/by;->a:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;->onBackPressed()V

    .line 152
    return-void
.end method
