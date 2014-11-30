.class Lmobi/mgeek/TunnyBrowser/hv;
.super Ljava/lang/Object;
.source "UserExperienceReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/UserExperienceReportActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/UserExperienceReportActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hv;->a:Lmobi/mgeek/TunnyBrowser/UserExperienceReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hv;->a:Lmobi/mgeek/TunnyBrowser/UserExperienceReportActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/UserExperienceReportActivity;->onBackPressed()V

    .line 61
    return-void
.end method
