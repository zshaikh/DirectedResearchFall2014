.class Lmobi/mgeek/TunnyBrowser/fp;
.super Ljava/lang/Object;
.source "PrivateModeSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fp;->a:Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    check-cast p2, Lmobi/mgeek/TunnyBrowser/fq;

    invoke-virtual {p2}, Lmobi/mgeek/TunnyBrowser/fq;->a()V

    .line 49
    return-void
.end method
