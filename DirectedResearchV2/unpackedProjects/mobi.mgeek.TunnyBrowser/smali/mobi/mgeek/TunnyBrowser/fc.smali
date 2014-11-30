.class Lmobi/mgeek/TunnyBrowser/fc;
.super Lcom/dolphin/browser/util/f;
.source "FirstLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fc;->a:Lmobi/mgeek/TunnyBrowser/FirstLauncherActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/fc;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/dolphin/browser/f/d/d;->a()Lcom/dolphin/browser/f/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/d;->b()V

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method
