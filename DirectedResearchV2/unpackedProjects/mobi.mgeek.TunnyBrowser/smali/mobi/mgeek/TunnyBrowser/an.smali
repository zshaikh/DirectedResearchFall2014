.class Lmobi/mgeek/TunnyBrowser/an;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 4126
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/an;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/an;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 4132
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 4133
    :goto_0
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/an;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4134
    return-void

    .line 4132
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
