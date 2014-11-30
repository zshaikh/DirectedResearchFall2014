.class Lmobi/mgeek/TunnyBrowser/dc;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/dc;->b:Lmobi/mgeek/TunnyBrowser/cz;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/dc;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/dc;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/mgeek/android/util/u;->a(Landroid/content/Intent;)V

    .line 202
    return-void
.end method
