.class Lmobi/mgeek/TunnyBrowser/fr;
.super Landroid/widget/BaseAdapter;
.source "PrivateModeSettingsActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;

.field private b:Landroid/content/Context;

.field private c:[Lcom/dolphin/browser/extensions/n;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/fr;->a:Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/fr;->b:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/fr;->b()V

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;Landroid/content/Context;Lmobi/mgeek/TunnyBrowser/fp;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lmobi/mgeek/TunnyBrowser/fr;-><init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->h()[Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/fr;->c:[Lcom/dolphin/browser/extensions/n;

    .line 94
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/fr;->notifyDataSetChanged()V

    .line 95
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lmobi/mgeek/TunnyBrowser/fq;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/fr;->a:Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/fr;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/fq;-><init>(Lmobi/mgeek/TunnyBrowser/PrivateModeSettingsActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(ILandroid/view/View;Landroid/view/ViewParent;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fr;->c:[Lcom/dolphin/browser/extensions/n;

    aget-object v0, v0, p1

    .line 118
    check-cast p2, Lmobi/mgeek/TunnyBrowser/fq;

    invoke-virtual {p2, v0}, Lmobi/mgeek/TunnyBrowser/fq;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 119
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fr;->c:[Lcom/dolphin/browser/extensions/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fr;->c:[Lcom/dolphin/browser/extensions/n;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fr;->c:[Lcom/dolphin/browser/extensions/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/fr;->c:[Lcom/dolphin/browser/extensions/n;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/fr;->a()Landroid/view/View;

    move-result-object p2

    .line 127
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmobi/mgeek/TunnyBrowser/fr;->a(ILandroid/view/View;Landroid/view/ViewParent;)V

    .line 130
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/fr;->getCount()I

    move-result v0

    .line 132
    if-nez v0, :cond_1

    .line 133
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 136
    :cond_1
    if-nez p1, :cond_2

    .line 137
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020277

    .line 144
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-object p2

    .line 138
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 139
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020274

    goto :goto_0

    .line 141
    :cond_3
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020278

    goto :goto_0
.end method
