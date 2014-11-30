.class Lmobi/mgeek/TunnyBrowser/ee;
.super Ljava/lang/Object;
.source "DolphinWebkitPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ee;->a:Lmobi/mgeek/TunnyBrowser/DolphinWebkitPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 205
    return-void
.end method
