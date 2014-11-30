.class Lmobi/mgeek/TunnyBrowser/ds;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ds;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lmobi/mgeek/TunnyBrowser/ei;->a(ZZ)V

    .line 451
    return-void
.end method
