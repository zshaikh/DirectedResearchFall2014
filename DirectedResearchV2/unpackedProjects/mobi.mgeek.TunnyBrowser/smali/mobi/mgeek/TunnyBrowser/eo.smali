.class Lmobi/mgeek/TunnyBrowser/eo;
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
    .line 229
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/eo;->a:Lmobi/mgeek/TunnyBrowser/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 234
    const-string v0, "exit"

    const-string v1, "clickbtn"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method
