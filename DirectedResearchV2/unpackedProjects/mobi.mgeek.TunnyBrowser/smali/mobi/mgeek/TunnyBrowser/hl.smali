.class Lmobi/mgeek/TunnyBrowser/hl;
.super Ljava/lang/Object;
.source "SubscriptionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/hl;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hl;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/hl;->a:Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;->a(Lmobi/mgeek/TunnyBrowser/SubscriptionActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
