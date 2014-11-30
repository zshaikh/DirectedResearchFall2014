.class Lmobi/mgeek/TunnyBrowser/fv;
.super Ljava/lang/Object;
.source "RestartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/RestartActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/RestartActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fv;->a:Lmobi/mgeek/TunnyBrowser/RestartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fv;->a:Lmobi/mgeek/TunnyBrowser/RestartActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/RestartActivity;->finish()V

    .line 70
    return-void
.end method
