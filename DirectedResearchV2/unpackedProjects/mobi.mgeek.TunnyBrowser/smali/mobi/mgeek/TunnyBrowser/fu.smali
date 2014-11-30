.class Lmobi/mgeek/TunnyBrowser/fu;
.super Ljava/lang/Object;
.source "RestartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/RestartActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/RestartActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fu;->a:Lmobi/mgeek/TunnyBrowser/RestartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fu;->a:Lmobi/mgeek/TunnyBrowser/RestartActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/RestartActivity;->finish()V

    .line 78
    return-void
.end method
