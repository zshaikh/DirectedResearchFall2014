.class Lmobi/mgeek/TunnyBrowser/hm;
.super Ljava/lang/Object;
.source "SubscriptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hm;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hm;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->onBackPressed()V

    .line 142
    return-void
.end method
