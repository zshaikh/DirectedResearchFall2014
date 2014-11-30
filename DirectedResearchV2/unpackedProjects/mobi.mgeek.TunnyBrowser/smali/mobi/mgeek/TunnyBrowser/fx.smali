.class Lmobi/mgeek/TunnyBrowser/fx;
.super Lmobi/mgeek/TunnyBrowser/gd;
.source "SetupWizardActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;


# direct methods
.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fx;->a:Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;

    .line 260
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/gd;-><init>(Lmobi/mgeek/TunnyBrowser/SetupWizardActivity;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fx;->f:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fx;->c:Ljava/lang/String;

    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fx;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fx;->e:Ljava/lang/Object;

    .line 266
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fx;->c:Ljava/lang/String;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fx;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    return-void
.end method
