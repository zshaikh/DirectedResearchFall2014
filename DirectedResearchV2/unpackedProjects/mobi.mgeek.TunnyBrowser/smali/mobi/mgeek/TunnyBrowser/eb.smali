.class Lmobi/mgeek/TunnyBrowser/eb;
.super Ljava/lang/Object;
.source "DeferredTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cz;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cz;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/eb;->a:Lmobi/mgeek/TunnyBrowser/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mgeek/android/util/u;->a(Z)V

    .line 171
    invoke-static {}, Lcom/mgeek/android/util/u;->a()V

    .line 172
    return-void
.end method
