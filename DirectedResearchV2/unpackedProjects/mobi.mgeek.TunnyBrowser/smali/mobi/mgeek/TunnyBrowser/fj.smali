.class Lmobi/mgeek/TunnyBrowser/fj;
.super Ljava/lang/Object;
.source "GeolocationPermissionsPrompt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/fh;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/fh;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fj;->a:Lmobi/mgeek/TunnyBrowser/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fj;->a:Lmobi/mgeek/TunnyBrowser/fh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/fh;->a(Lmobi/mgeek/TunnyBrowser/fh;Z)V

    .line 60
    return-void
.end method
