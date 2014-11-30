.class Lmobi/mgeek/TunnyBrowser/fw;
.super Ljava/lang/Object;
.source "RestartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/RestartActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/RestartActivity;Z)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fw;->b:Lmobi/mgeek/TunnyBrowser/RestartActivity;

    iput-boolean p2, p0, Lmobi/mgeek/TunnyBrowser/fw;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fw;->b:Lmobi/mgeek/TunnyBrowser/RestartActivity;

    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/fw;->a:Z

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/RestartActivity;->a(Landroid/content/Context;Z)V

    .line 62
    return-void
.end method
