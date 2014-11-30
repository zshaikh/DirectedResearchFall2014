.class Lmobi/mgeek/TunnyBrowser/cx;
.super Landroid/database/ContentObserver;
.source "DateSortedExpandableListAdapter.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cw;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cw;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cx;->a:Lmobi/mgeek/TunnyBrowser/cw;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cx;->a:Lmobi/mgeek/TunnyBrowser/cw;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/cw;->c()V

    .line 58
    return-void
.end method
