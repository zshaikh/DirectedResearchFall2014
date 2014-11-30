.class Lmobi/mgeek/TunnyBrowser/gn;
.super Lmobi/mgeek/TunnyBrowser/ge;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/gn;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 464
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/ge;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    .line 465
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/gn;->c:Ljava/util/List;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/gl;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/gn;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/gn;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/gl;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    return-void
.end method
