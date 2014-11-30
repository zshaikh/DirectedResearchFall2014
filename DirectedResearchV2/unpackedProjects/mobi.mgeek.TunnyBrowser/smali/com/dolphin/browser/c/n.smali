.class public Lcom/dolphin/browser/c/n;
.super Lcom/dolphin/browser/c/a;
.source "ExitCommand.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/dolphin/browser/c/n;->a:Z

    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/dolphin/browser/c/n;->a:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ei;->d()V

    .line 20
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/ei;->a()Lmobi/mgeek/TunnyBrowser/ei;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ei;->b()V

    goto :goto_0
.end method
